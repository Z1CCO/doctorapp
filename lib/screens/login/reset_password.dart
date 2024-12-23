import 'package:doctor_app/theme/text_style.dart';
import 'package:doctor_app/widgets/my_elevated_button.dart';
import 'package:doctor_app/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool obscureText = true;
  bool obscureText2 = true;
  void obscureTextbool() {
    obscureText = !obscureText;
    setState(() {});
  }

  void obscureTextbool2() {
    obscureText2 = !obscureText2;
    setState(() {});
  }

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
                  'Reset Password',
                  style: TextStyles.s18w500black,
                ),
                SizedBox(
                  width: 45,
                  height: 45,
                ),
              ],
            ),
            const SizedBox(height: 23.0),
            Text('Enter a new password', style: TextStyles.s16w400black),
            SizedBox(height: 96),
            MyTextfield(
              obscureText: obscureText,
              hintText: 'New Password',
              suffix: Padding(
                padding: const EdgeInsets.all(18.0),
                child: GestureDetector(
                  onTap: obscureTextbool,
                  child: SvgPicture.asset(
                    'assets/svg/eye.svg',
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            MyTextfield(
              obscureText: obscureText2,
              hintText: 'Confirm Password',
              suffix: Padding(
                padding: const EdgeInsets.all(18.0),
                child: GestureDetector(
                  onTap: obscureTextbool2,
                  child: SvgPicture.asset(
                    'assets/svg/eye.svg',
                  ),
                ),
              ),
            ),
            SizedBox(height: 55),
            MyElevatedButtonWithLogin(
              text: 'Confirm',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
