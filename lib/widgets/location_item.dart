import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/core/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LocationItem extends StatelessWidget {
  const LocationItem({
    super.key,
    required this.title,
    this.iconColor = AppColors.appDarkBlue,
    this.textColor = AppColors.appDarkBlue,
  });

  final String title;
  final Color iconColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          AppIcons.location,
          width: 16,
          height: 16,
          colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
        ),
        const SizedBox(width: 5),
        Text(
          title,
          style: TextStyle(
            fontFamily: "Plus Jakarta Sans",
            color: textColor,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
