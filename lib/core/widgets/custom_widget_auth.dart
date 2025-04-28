import 'package:flutter/material.dart';
import 'package:todo_app/core/utils/app_colors.dart';

class CustomWidgetAuth extends StatelessWidget {
  const CustomWidgetAuth({super.key, required this.widget});
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
              child: widget,
            ),
          ),
        ),
      ],
    );
  }
}
