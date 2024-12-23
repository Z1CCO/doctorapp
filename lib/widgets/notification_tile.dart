// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:doctor_app/theme/app_colors.dart';
import 'package:doctor_app/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationTile extends StatelessWidget {
  Color? color;
  Color? shadowcolor;
  NotificationTile({super.key, this.color, this.shadowcolor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(7),
            width: 31,
            height: 31,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: shadowcolor ?? AppColors.white),
            child: SvgPicture.asset(
              'assets/svg/calendar.svg',
              color: color,
            ),
          ),
          SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 286,
                child: Text(
                  'Your have appointment with mahbuba isl amat 9:00 pm today',
                  style: TextStyles.s13w500black,
                ),
              ),
              Text(
                'Just Now',
                style: TextStyles.s13w500blue,
              ),
            ],
          )
        ],
      ),
    );
  }
}
