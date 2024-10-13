import 'package:artificial_app/constant/constants.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.inputType,
      this.suffixIcon,
      @required this.onSaved,
      this.onChanged,
      this.maxLines});
  final TextInputType? inputType;
  final Widget? suffixIcon;
  final ValueSetter? onSaved;
  final ValueChanged? onChanged;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // keyboardType: inputType,
      maxLines: maxLines,
      onSaved: onSaved,
      onChanged: onChanged,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xffcccccc)),
          ),
          suffixIcon: suffixIcon),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData? prefixIcon;
  final Color? fillColor;
  final bool isFilled;
  final BorderRadius? borderRadius;
  final int maxLines;
  final TextEditingController? controller;

  const CustomTextField({
    Key? key,
    required this.hintText,
    this.prefixIcon,
    this.fillColor,
    this.isFilled = true,
    this.borderRadius,
    this.maxLines = 1,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines, // Allow multi-line input if needed
      decoration: InputDecoration(
        filled: isFilled,
        fillColor: fillColor ?? AppColors.greyColor.withOpacity(0.2),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey, // Change hint text color if needed
        ),
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        border: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(8),
          borderSide: BorderSide.none, // No border line
        ),
        contentPadding: const EdgeInsets.symmetric(
            vertical: 16.0, horizontal: 10.0), // Add padding
      ),
    );
  }
}
