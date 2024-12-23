import 'package:doctor_app/theme/app_colors.dart';
import 'package:doctor_app/theme/text_style.dart';
import 'package:doctor_app/widgets/my_elevated_button.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({super.key});

  @override
  Widget build(BuildContext context) {
    List images = <String>[
      'assets/images/pediatr.png',
      'assets/images/urolog.png',
      'assets/images/infectious.png',
      'assets/images/internal.png',
      'assets/images/cardiolog.png',
      'assets/images/obs.png',
      'assets/images/ent.png',
      'assets/images/dermatolog.png',
    ];
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
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
                  'Departments /Categories',
                  style: TextStyles.s18w500black,
                ),
                SizedBox(
                  width: 45,
                  height: 45,
                ),
              ],
            ),
            const SizedBox(height: 23.0),
            Text('What do you want to\nConsult you like',
                style: TextStyles.s25w400black),
            SizedBox(height: 7),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 0, crossAxisCount: 2),
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      fit: BoxFit.contain,
                      images[index],
                    );
                  }),
            ),
            MyElevatedButtonWithLogin(
              text: 'Confirm',
              onTap: () {},
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
