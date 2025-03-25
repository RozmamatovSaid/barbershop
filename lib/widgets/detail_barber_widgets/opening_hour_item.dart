import 'package:barbershop/core/utils/colors.dart';
import 'package:flutter/material.dart';

class OpeningHourItem extends StatelessWidget {
  const OpeningHourItem({super.key, required this.text, required this.hours});
  final String text;
  final String hours;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontFamily: "Plus Jakarta Sans",
            color: AppColors.appGrey,
          ),
        ),
        Text(
          hours,
          style: TextStyle(
            fontFamily: "Plus Jakarta Sans",
            color: AppColors.appDark,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
