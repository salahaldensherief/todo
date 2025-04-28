// Flutter imports:
import 'package:flutter/material.dart';
import 'package:todo_app/core/utils/app_colors.dart';

class CustomTextBottom extends StatelessWidget {
  CustomTextBottom({required this.text, super.key, this.onPressed});
  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        minimumSize: Size(400, 50),
        backgroundColor:AppColors.secandColor,
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
