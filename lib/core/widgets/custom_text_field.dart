// Flutter imports:
import 'package:flutter/material.dart';
import 'package:todo_app/core/utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {required this.hintText,
      this.suffixIcon,
      required this.textInputType,
      this.onSaved,
      this.obscureText = false});
  final String hintText;
  final Widget? suffixIcon;
  final TextInputType textInputType;
  final void Function(String?)? onSaved;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      obscureText: obscureText,
      keyboardType: textInputType,
      onSaved: onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'required field';
        }
        return null;
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        suffixIcon: suffixIcon,
        border: buildBorder(),
        focusedBorder: buildBorder(),
        enabledBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          width: 1,
          color: AppColors.secandColor,
        ));
  }
}
