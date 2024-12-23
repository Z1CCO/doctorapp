import 'package:doctor_app/theme/app_colors.dart';
import 'package:doctor_app/theme/text_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyElevatedButtonWithLogin extends StatelessWidget {
  VoidCallback onTap;
  final String text;
  EdgeInsets? padding;
  double? height;
  MyElevatedButtonWithLogin({
    required this.onTap,
    required this.text,
    this.padding,
    this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height ?? 52,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: AppColors.blue,
          backgroundColor: AppColors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onTap,
        child: Text(text, style: TextStyles.s15w500white),
      ),
    );
  }
}
