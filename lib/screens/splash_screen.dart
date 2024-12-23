import 'package:doctor_app/theme/app_colors.dart';
import 'package:doctor_app/screens/login/login.dart';
import 'package:doctor_app/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 2), () {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const Login(),
        ),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset('assets/images/splash_circle1.png'),
          ),
          Column(
            children: [
              Image.asset('assets/images/doctor.png'),
              SizedBox(height: 22.8),
              Text(
                'SomDoctor',
                style: TextStyles.s36w500white,
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset('assets/images/splash_circle2.png'),
          ),
        ],
      ),
    );
  }
}
