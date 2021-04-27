import 'package:DarkwebScan/core/platform/app_image.dart';
import 'package:flutter/material.dart';

class LauncherIcon extends StatelessWidget {
  final Widget icon;
  final String label;
  final Function() onPress;

  const LauncherIcon({
    Key key,
    @required this.icon,
    @required this.label,
    @required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onPress,
        child: Column(
          children: [
            icon,
            const SizedBox(height: 8),
            Text(
              label,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const SizedBox(height: 5),
            Image.asset(
              AppImages.lock,
              color: const Color(0xffE06262),
              width: 22,
              height: 22,
            ),
          ],
        ),
      );
}
