import 'package:doctor_app/theme/app_colors.dart';
import 'package:doctor_app/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 100,
            padding: const EdgeInsets.all(25.0),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: SizedBox(
                        width: 45,
                        height: 45,
                        child: Icon(Icons.arrow_back_sharp),
                      ),
                    ),
                    Text(
                      'Incoming Call',
                      style: TextStyles.s18w500black,
                    ),
                    SizedBox(
                      width: 45,
                      height: 45,
                    ),
                  ],
                ),
                Spacer(),
                SvgPicture.asset('assets/svg/wait.svg'),
                SizedBox(height: 30),
                Text(
                  'Calling..',
                  style: TextStyles.s15w400black,
                ),
                Text(
                  'Customer',
                  style: TextStyles.s20w500black,
                ),
                Spacer(),
              ],
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 36,
            children: List.generate(3, (index) {
              List items = [
                ['assets/svg/mic.svg', const Color.fromARGB(117, 65, 70, 74)],
                ['assets/svg/call2.svg', const Color(0xffEB5757)],
                ['assets/svg/voice.svg', const Color.fromARGB(117, 65, 70, 74)],
              ];
              return Container(
                padding: EdgeInsets.all(12),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: items[index][1]),
                child: SvgPicture.asset(
                  items[index][0],
                ),
              );
            }),
          ),
          SizedBox(height: 25)
        ],
      ),
    );
  }
}
