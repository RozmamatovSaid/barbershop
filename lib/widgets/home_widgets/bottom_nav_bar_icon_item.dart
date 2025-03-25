import 'package:barbershop/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBarIconItem extends StatelessWidget {
  const BottomNavBarIconItem({
    super.key,
    required this.icon,
    required this.text,
  });

  final String icon, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          icon,
          colorFilter: ColorFilter.mode(AppColors.appDarkBlue, BlendMode.srcIn),
          width: 20,
          height: 20,
        ),
        Text(text, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
