// ignore_for_file: deprecated_member_use

import 'package:doctor_app/screens/another.dart';
import 'package:doctor_app/screens/doctors.dart';
import 'package:doctor_app/screens/home.dart';
import 'package:doctor_app/screens/notification.dart';
import 'package:doctor_app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List screens = [
    Home(),
    Doctors(),
    Notifications(),
    Another(),
  ];
  List icons = <String>[
    'assets/svg/home.svg',
    'assets/svg/doctors.svg',
    'assets/svg/notifications.svg',
    'assets/svg/another.svg',
  ];
  void selectScreens(int index) {
    selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          screens[selectedIndex],
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 69,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      offset: Offset(0, 0),
                      blurRadius: 3,
                      spreadRadius: 3)
                ],
                color: AppColors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 69 / 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                    4,
                    (index) => Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => selectScreens(index),
                          child: SizedBox(
                            child: SvgPicture.asset(
                              icons[index],
                              color: selectedIndex == index
                                  ? AppColors.blue
                                  : AppColors.black,
                            ),
                          ),
                        ),
                        if (selectedIndex == index)
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: SvgPicture.asset('assets/svg/subtract.svg',
                                color: AppColors.blue),
                          )
                        else
                          SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
