import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:myapp/theme/theme_helper.dart';

class CW{

  static Widget commonTextFieldForLoginSignUP({
    double? elevation,
    String? hintText,
    EdgeInsetsGeometry? contentPadding,
    TextEditingController? controller,
    int? maxLines,
    double? cursorHeight,
    Widget? prefixIcon,
    bool wantBorder = true,
    ValueChanged<String>? onChanged,
    FormFieldValidator<String>? validator,
    Color? fillColor,
    Color? initialBorderColor,
    double? initialBorderWidth,
    TextInputType? keyboardType,
    double? borderRadius,
    double? maxHeight,
    TextStyle? hintStyle,
    TextStyle? style,
    GestureTapCallback? onTap,
    List<TextInputFormatter>? inputFormatters,
    TextCapitalization textCapitalization = TextCapitalization.none,
    bool autofocus = false,
    bool readOnly = false,
  }) {
    return TextFormField(
      cursorHeight: cursorHeight,
      onTap: onTap,
      controller: controller,
      onChanged: onChanged ??
              (value) {
            value = value.trim();
            if (value.isEmpty || value.replaceAll(" ", "").isEmpty) {
              controller?.text = "";
            }
          },
      validator: validator,

      keyboardType: keyboardType ?? TextInputType.streetAddress,
      readOnly: readOnly,
      autofocus: autofocus,
      inputFormatters: inputFormatters,
      textCapitalization: textCapitalization,
      style: style ??
          Theme.of(Get.context!)
              .textTheme
              .bodyMedium
              ?.copyWith( color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: fillColor ?? Colors.transparent,
        filled: true,
        prefix: prefixIcon,

        contentPadding:
        contentPadding ?? EdgeInsets.symmetric(horizontal: 20),
        hintStyle: hintStyle ??
            Theme.of(Get.context!)
                .textTheme
                .bodyMedium
                ?.copyWith( color:  Colors.white),
        disabledBorder: OutlineInputBorder(
            borderSide: wantBorder
                ? BorderSide(color: Colors.black, width: 2)
                : BorderSide.none,
            borderRadius:
            BorderRadius.circular(borderRadius ?? 5)),
        border: OutlineInputBorder(
            borderSide: wantBorder
                ? BorderSide(color: theme.primaryColor, width: 2)
                : BorderSide.none,
            borderRadius:
            BorderRadius.circular(borderRadius ?? 5)),
        enabledBorder: OutlineInputBorder(
            borderSide: wantBorder
                ? BorderSide(
                color: initialBorderColor ?? Colors.black,
                width: initialBorderWidth ?? 2)
                : BorderSide.none,
            borderRadius:
            BorderRadius.circular(borderRadius ?? 5)),
        errorBorder: OutlineInputBorder(
            borderSide: wantBorder
                ? BorderSide(color: Colors.red, width: 2)
                : BorderSide.none,
            borderRadius:
            BorderRadius.circular(borderRadius ?? 5)),
      ),
    );
  }
}