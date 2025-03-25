import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/core/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({
    super.key,
    required this.rating,
    this.iconColor = Colors.grey,
    this.textColor = AppColors.appGrey,
  });

  final String rating;
  final Color iconColor, textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 9.w,
      children: [
        SvgPicture.asset(
          AppIcons.star,
          colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
        ),
        Text(
          rating,
          style: TextStyle(color: textColor, fontFamily: "Plus Jakarta Sans"),
        ),
      ],
    );
  }
}
