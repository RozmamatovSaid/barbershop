import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/core/utils/fontfamily.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseServiceItem extends StatelessWidget {
  const ChooseServiceItem({super.key, required this.image, required this.title, required this.price});
  final String image;
  final String title;
  final num price;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4.h,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image(
            image: AssetImage(image),
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: AppColors.appDark,
            fontWeight: FontWeight.w500,
            fontSize: 16,
            fontFamily: AppFontFamily.plusJakartaSans,
          ),
        ),
        Text(
          "\$${price}",
          style: TextStyle(
            color: AppColors.appGrey,
            fontFamily: AppFontFamily.plusJakartaSans,
          ),
        ),
      ],
    );
  }
}
