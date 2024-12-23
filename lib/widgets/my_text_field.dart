import 'package:doctor_app/theme/app_colors.dart';
import 'package:doctor_app/theme/text_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextfield extends StatelessWidget {
  final String hintText;
  Widget? suffix;
  bool? obscureText;
  MyTextfield({
    super.key,
    required this.hintText,
    this.suffix,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        suffixIcon: suffix ?? SizedBox(),
        hintText: hintText,
        hintStyle: TextStyles.s15w400black,
        isDense: true,
        filled: true,
        fillColor: AppColors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.white),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
