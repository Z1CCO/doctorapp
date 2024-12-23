// ignore_for_file: must_be_immutable

import 'package:doctor_app/theme/app_colors.dart';
import 'package:doctor_app/theme/text_style.dart';
import 'package:flutter/material.dart';

class PaymentTile extends StatelessWidget {
  final String name;
  final String logo;
  final bool index;
  VoidCallback onTap;
  PaymentTile({
    required this.onTap,
    required this.name,
    required this.index,
    required this.logo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        onTap: onTap,
        leading: Image.asset(logo),
        title: Text(
          name,
          style: TextStyles.s16w400black,
        ),
        trailing: CircleAvatar(
          radius: 8,
          backgroundColor: AppColors.blue,
          child: CircleAvatar(
            radius: 7.5,
            child: CircleAvatar(
              radius: 6.5,
              backgroundColor: index == true ? AppColors.blue : AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
