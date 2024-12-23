import 'package:doctor_app/screens/home_screen.dart';
import 'package:doctor_app/screens/login/forget_password.dart';
import 'package:doctor_app/theme/app_colors.dart';
import 'package:doctor_app/theme/text_style.dart';
import 'package:doctor_app/widgets/my_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class SendCode extends StatefulWidget {
  const SendCode({super.key});

  @override
  State<SendCode> createState() => _SendCodeState();
}

class _SendCodeState extends State<SendCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 233, 233),
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
                  'Verification Code',
                  style: TextStyles.s18w500black,
                ),
                SizedBox(
                  width: 45,
                  height: 45,
                ),
              ],
            ),
            const SizedBox(height: 23.0),
            Text('Enter the code we sent you', style: TextStyles.s16w400black),
            SizedBox(height: 74),
            Directionality(
              // Specify direction if desired
              textDirection: TextDirection.ltr,
              child: Pinput(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                length: 5,
                defaultPinTheme: PinTheme(
                  textStyle: TextStyles.s27w500black,
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 6),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgetPassword(),
                  ),
                ),
                child: Text(
                  'Resent Code',
                  style: TextStyles.s16w400blue,
                ),
              ),
            ),
            SizedBox(height: 94),
            MyElevatedButtonWithLogin(
              text: 'Coniform',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => HomeScreen(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
