// ignore_for_file: must_be_immutable

import 'package:doctor_app/screens/ordercomplater.dart';
import 'package:doctor_app/theme/app_colors.dart';
import 'package:doctor_app/theme/text_style.dart';
import 'package:doctor_app/widgets/doctor_tile.dart';
import 'package:doctor_app/widgets/my_elevated_button.dart';
import 'package:doctor_app/widgets/payment_tile.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int select = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 45,
                  height: 45,
                  child: Icon(Icons.arrow_back_sharp),
                ),
                Text(
                  'Payment',
                  style: TextStyles.s18w500black,
                ),
                SizedBox(
                  width: 45,
                  height: 45,
                ),
              ],
            ),
            SizedBox(height: 74),
            DoctorTile(
              bottomRight: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    '\$12',
                    style: TextStyles.s12w500white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 64),
            Column(
              children: List.generate(4, (index) {
                final items = [
                  ['assets/images/mastercard.png', 'Credit Card'],
                  ['assets/images/google.png', 'Google Pay'],
                  ['assets/images/apple.png', 'Apple Pay'],
                  ['assets/images/paypal.png', 'Pay Pal '],
                ];
                return PaymentTile(
                  name: items[index][1].toString(),
                  logo: items[index][0].toString(),
                  onTap: () {
                    select = index;
                    setState(() {});
                  },
                  index: select == index ? true : false,
                );
              }),
            ),
            Spacer(),
            MyElevatedButtonWithLogin(
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => OrderComplater(),
                      ),
                    ),
                text: 'Payment')
          ],
        ),
      ),
    );
  }
}
