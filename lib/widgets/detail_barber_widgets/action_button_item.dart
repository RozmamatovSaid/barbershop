import 'package:barbershop/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActionButtonItem extends StatelessWidget {
  const ActionButtonItem({super.key, required this.icon, required this.title});

  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      children: [
        SvgPicture.asset(icon),
        Text(title, style: TextStyle(color: AppColors.appDarkBlue)),
      ],
    );
  }
}
