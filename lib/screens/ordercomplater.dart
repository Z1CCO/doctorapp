import 'package:doctor_app/screens/chat.dart';
import 'package:doctor_app/theme/text_style.dart';
import 'package:doctor_app/widgets/my_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderComplater extends StatelessWidget {
  const OrderComplater({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(25.0),
        child: MyElevatedButtonWithLogin(
            height: 56,
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ChatScreen(),
                  ),
                ),
            text: 'Payment Done'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/svg/done.svg'),
            SizedBox(height: 22),
            Text(
              'Order Completed Successfully!',
              style: TextStyles.s16w400grey,
            ),
            Text(
              'Thank your and see you soon',
              style: TextStyles.s16w400grey,
            ),
          ],
        ),
      ),
    );
  }
}
