import 'package:DarkwebScan/core/platform/app_theme.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final String value;
  final bool isPassword;
  final bool enabled;
  final bool autocorrect;
  final String suffixText;
  final Widget prefix;
  final Widget suffix;
  final InputBorder border;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry contentPadding;
  final String Function(String value) validator;
  final AutovalidateMode autovalidateMode;
  final TextCapitalization textCapitalization;
  final FocusNode focusNode;
  final VoidCallback onEditingComplete;
  final ValueChanged<String> onChanged;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;

  const InputField({
    this.controller,
    this.hint,
    this.value,
    this.prefix,
    this.isPassword = false,
    this.enabled = true,
    this.autocorrect = true,
    this.suffixText,
    this.suffix,
    this.validator,
    this.focusNode,
    this.onEditingComplete,
    this.onChanged,
    this.border,
    this.margin = const EdgeInsets.symmetric(horizontal: 0),
    this.contentPadding = const EdgeInsets.only(left: 20, right: 10),
    this.textCapitalization = TextCapitalization.sentences,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.textInputAction = TextInputAction.go,
    this.keyboardType = TextInputType.name,
  });

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(6)),
      borderSide: BorderSide(color: AppColors.actionColor, width: 2),
    );

    const style = TextStyle(
      color: AppColors.fontColor,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    );

    return Padding(
      padding: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (value != null) ...[
            Text(
              hint,
              style: style,
            ),
            const SizedBox(height: 8),
          ],
          TextFormField(
            controller: controller,
            autovalidateMode: autovalidateMode,
            onChanged: onChanged,
            initialValue: controller == null ? value : null,
            enabled: enabled,
            focusNode: focusNode,
            autocorrect: autocorrect,
            style: value != null ? style : null,
            validator: validator,
            onEditingComplete: onEditingComplete,
            decoration: InputDecoration(
              enabled: enabled,
              border: this.border ?? border,
              suffixIcon: suffix,
              enabledBorder: this.border ?? border,
              focusedBorder: this.border ?? border,
              errorBorder: (this.border as OutlineInputBorder ?? border).copyWith(
                borderSide: const BorderSide(color: Colors.red, width: 2.2),
              ),
              focusedErrorBorder: (this.border as OutlineInputBorder ?? border).copyWith(
                borderSide: const BorderSide(color: Colors.red, width: 2.2),
              ),
              // hintText: value == null ? hint : null,
              contentPadding: contentPadding,
            ),
          ),
        ],
      ),
    );
  }
}
