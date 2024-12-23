import 'package:doctor_app/screens/login/forget_password.dart';
import 'package:doctor_app/screens/login/send_code.dart';
import 'package:doctor_app/theme/text_style.dart';
import 'package:doctor_app/widgets/my_elevated_button.dart';
import 'package:doctor_app/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscureText = true;
  bool signUp = false;
  void login() async {}
  void obscureTextbool() {
    obscureText = !obscureText;
    setState(() {});
  }

  void signInAndUp() {
    signUp = !signUp;
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
                SizedBox(
                  width: 45,
                  height: 45,
                  child: Icon(Icons.arrow_back_sharp),
                ),
                Text(
                  signUp ? 'Let\'s Sign Up' : 'Let\'s Sign In',
                  style: TextStyles.s18w500black,
                ),
                SizedBox(
                  width: 45,
                  height: 45,
                ),
              ],
            ),
            const SizedBox(height: 52.0),
            Text(signUp ? 'Create\nAccount!' : 'Welcome!',
                style: TextStyles.s30w500black),
            SizedBox(height: signUp ? 49 : 88),
            MyTextfield(
              hintText: 'Name',
            ),
            const SizedBox(height: 20),
            signUp
                ? Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: MyTextfield(
                      hintText: 'Email',
                    ),
                  )
                : SizedBox(),
            MyTextfield(
              obscureText: obscureText,
              hintText: 'Password',
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
            const SizedBox(height: 4),
            if (signUp)
              SizedBox()
            else
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
                    'Forgot Password',
                    style: TextStyles.s13w500blue,
                  ),
                ),
              ),
            const SizedBox(height: 75),
            MyElevatedButtonWithLogin(
              text: signUp ? 'Sign Up' : 'Sign In',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SendCode(),
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    signUp
                        ? 'Already have an account? '
                        : 'Don’t have an account? ',
                    style: TextStyles.s13w500black),
                GestureDetector(
                  onTap: signInAndUp,
                  child: Text(signUp ? 'Sign In' : 'Sign Up',
                      style: TextStyles.s13w500blue),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
