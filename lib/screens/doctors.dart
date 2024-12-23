import 'package:doctor_app/theme/app_colors.dart';
import 'package:doctor_app/theme/text_style.dart';
import 'package:doctor_app/widgets/doctor_tile.dart';
import 'package:doctor_app/widgets/filter_category_button.dart';
import 'package:doctor_app/widgets/my_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Doctors extends StatefulWidget {
  const Doctors({super.key});

  @override
  State<Doctors> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  int tap = 0;
  void onTap(index) {
    tap = index;
    setState(() {});
    setState(() {});
  }

  void _filterBottomSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  width: 42,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Color(0xffE7E7E7),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              Text(
                'Categori',
                style: TextStyles.s16w400black,
              ),
              SizedBox(height: 16),
              Column(
                children: [
                  Row(
                    children: List.generate(
                      3,
                      (index) {
                        List titles = <String>[
                          'Dermatology',
                          'Cardiologist',
                          'Pediatrics',
                        ];
                        return FilterCategoryButton(title: titles[index]);
                      },
                    ),
                  ),
                  Row(
                    children: [
                      FilterCategoryButton(title: 'Ophthalmology'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24),
              Text(
                'Time',
                style: TextStyles.s18w500black,
              ),
              SizedBox(height: 12),
              Column(
                children: [
                  Row(
                    children: List.generate(
                      3,
                      (index) {
                        List titles = <String>[
                          '10:00 AM',
                          '10:30 AM',
                          '09:30 AM',
                        ];
                        return FilterCategoryButton(title: titles[index]);
                      },
                    ),
                  ),
                  Row(
                    children: [
                      FilterCategoryButton(title: '11:00 AM'),
                    ],
                  ),
                  SizedBox(height: 48),
                  MyElevatedButtonWithLogin(
                      onTap: () {}, text: 'Apply Filters'),
                  SizedBox(height: 13),
                  Text(
                    'Clear Filters',
                    style: TextStyles.s14w400black,
                  ),
                  SizedBox(height: 27),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

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
                    'Select ',
                    style: TextStyles.s18w500black,
                  ),
                  SizedBox(
                    width: 45,
                    height: 45,
                  ),
                ],
              ),
              SizedBox(height: 40),
              SizedBox(
                height: 48,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset('assets/svg/search.svg'),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        _filterBottomSheet();
                      },
                      child: Container(
                        width: 38,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(8)),
                        child: SvgPicture.asset('assets/svg/filter.svg'),
                      ),
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyles.s15w400grey,
                    isDense: true,
                    filled: true,
                    fillColor: AppColors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Specialist',
                style: TextStyles.s16w400black,
              ),
              SizedBox(height: 9),
              Column(
                children: List.generate(
                  9,
                  (index) => Padding(
                    padding: EdgeInsets.only(bottom: 13),
                    child: DoctorTile(),
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
