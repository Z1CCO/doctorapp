import 'package:doctor_app/theme/app_colors.dart';
import 'package:doctor_app/theme/text_style.dart';
import 'package:flutter/material.dart';

class FilterCategoryButton extends StatefulWidget {
  final String title;
  const FilterCategoryButton({
    super.key,
    required this.title,
  });

  @override
  State<FilterCategoryButton> createState() => _FilterCategoryButtonState();
}

class _FilterCategoryButtonState extends State<FilterCategoryButton> {
  bool tap = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tap = !tap;
        setState(() {});
      },
      child: Container(
        height: 38,
        padding: EdgeInsets.all(9),
        margin: EdgeInsets.only(right: 10, bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: tap ? AppColors.blue : AppColors.white),
        child: Text(
          widget.title,
          style: tap ? TextStyles.s14w400white : TextStyles.s14w400black,
        ),
      ),
    );
  }
}
