import 'package:doctor_app/screens/login/reset_password.dart';
import 'package:doctor_app/theme/text_style.dart';
import 'package:doctor_app/widgets/my_elevated_button.dart';
import 'package:doctor_app/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
                  'Forgot Password',
                  style: TextStyles.s18w500black,
                ),
                SizedBox(
                  width: 45,
                  height: 45,
                ),
              ],
            ),
            const SizedBox(height: 23.0),
            Text(
                'We need your registration phon number to send you password reset code!',
                style: TextStyles.s16w400black),
            SizedBox(height: 74),
            MyTextfield(
              hintText: 'Email',
            ),
            SizedBox(height: 18),
            MyElevatedButtonWithLogin(
              text: 'Send Code',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResetPassword(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
