import 'package:DarkwebScan/core/platform/app_theme.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final Widget label;
  final Color backgroundColor;
  final EdgeInsetsGeometry margin;
  final Size minimumSize;
  final VoidCallback onPressed;
  final BorderSide borderSide;
  final BorderRadiusGeometry borderRadius;
  final bool enabled;

  const ActionButton({
    @required this.label,
    @required this.onPressed,
    this.backgroundColor = AppColors.actionColor,
    this.margin = const EdgeInsets.all(0.01),
    this.minimumSize,
    this.borderSide,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) => Container(
        padding: margin,
        child: TextButton(
          child: label,
          style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith(
              (states) => enabled ? backgroundColor : AppColors.grey,
            ),
            side: MaterialStateProperty.resolveWith(
              (states) => borderSide,
            ),
            minimumSize: MaterialStateProperty.resolveWith(
              (states) => minimumSize,
            ),
            shape: ButtonStyleButton.allOrNull(RoundedRectangleBorder(borderRadius: borderRadius)),
          ),
          onPressed: enabled ? onPressed : null,
        ),
      );
}
