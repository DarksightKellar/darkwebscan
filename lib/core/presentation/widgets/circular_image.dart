import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum ImageType { svgAsset, imageAsset, networkImage }

class CircularImage extends StatelessWidget {
  final String imageUrl;
  final ImageType imageType;
  final bool hasBorder;
  final double radius;
  final double borderWidth;
  final Color borderColor;
  final BoxFit fit;

  const CircularImage({
    Key key,
    @required this.imageUrl,
    @required this.imageType,
    this.hasBorder = true,
    this.radius = 17,
    this.borderWidth = 2,
    this.borderColor = Colors.white,
    this.fit = BoxFit.contain,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: radius * 2,
        width: radius * 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(color: borderColor, width: hasBorder ? borderWidth : 0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: imageType == ImageType.networkImage
              ? CachedNetworkImage(
                  imageUrl: imageUrl,
                  useOldImageOnUrlChange: true,
                  fit: fit,
                  height: radius * 2,
                  width: radius * 2,
                  errorWidget: (context, url, error) => const Icon(Icons.error_outline),
                  progressIndicatorBuilder: (_, __, ___) => Container(color: Colors.white),
                )
              : imageType == ImageType.imageAsset
                  ? Image.asset(
                      imageUrl,
                      fit: fit,
                    )
                  : SvgPicture.asset(
                      imageUrl,
                      fit: fit,
                    ),
        ),
      );
}
