import 'package:doctor_app/theme/app_colors.dart';
import 'package:doctor_app/theme/text_style.dart';
import 'package:doctor_app/widgets/notification_tile.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List shadowColors = <Color>[
    const Color.fromARGB(38, 24, 160, 251),
    const Color.fromARGB(33, 255, 169, 115),
    const Color.fromARGB(34, 151, 151, 151),
  ];
  List color = <Color>[AppColors.blue, AppColors.orange, AppColors.black];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 233, 233),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: SingleChildScrollView(
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
                    'Notification ',
                    style: TextStyles.s18w500black,
                  ),
                  SizedBox(
                    width: 45,
                    height: 45,
                  ),
                ],
              ),
              SizedBox(height: 21),
              Text(
                'Today - 20 Sep, 2020',
                style: TextStyles.s16w400black,
              ),
              SizedBox(height: 8),
              Column(
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 25.0),
                    child: NotificationTile(
                      color: color[index],
                      shadowcolor: shadowColors[index],
                    ),
                  ),
                ),
              ),
              Text(
                '19 Sep, 2020',
                style: TextStyles.s16w400black,
              ),
              SizedBox(height: 8),
              Column(
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 25.0),
                    child: NotificationTile(
                      color: color[index],
                      shadowcolor: shadowColors[index],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
