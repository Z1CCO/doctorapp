// ignore_for_file: must_be_immutable

import 'package:doctor_app/screens/show_doctor.dart';
import 'package:doctor_app/theme/app_colors.dart';
import 'package:doctor_app/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoctorTile extends StatelessWidget {
  Widget? bottomRight;
  DoctorTile({super.key, this.bottomRight});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ShowDoctor(),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(12),
        height: 88,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: AppColors.white),
        child: Row(
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/woman.png',
                  ),
                ),
                color: AppColors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(0),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: -4,
                    right: -4,
                    child: CircleAvatar(
                      radius: 10,
                      child: CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dr. Mahbuba Islam',
                  style: TextStyles.s16w400black,
                ),
                Text(
                  'Cardiologist- Cumilla Madical Collage',
                  style: TextStyles.s10w400black,
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color.fromARGB(21, 24, 160, 251),
                  ),
                  child: Text(
                    '10:20 AM - 12:30 PM',
                    style: TextStyles.s9w400blue,
                  ),
                )
              ],
            ),
            Spacer(),
            bottomRight ??
                Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: AppColors.blue,
                    child: SvgPicture.asset('assets/svg/add.svg'),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
