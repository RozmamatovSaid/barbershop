import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/core/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 284.w,
      height: 44.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.pastelBlue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(AppIcons.searchNormal),
          Text(
            "Search barber’s, haircut ser...",
            style: TextStyle(
              color: AppColors.appGrey,
              fontFamily: "Plus Jakarta Sans",
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
