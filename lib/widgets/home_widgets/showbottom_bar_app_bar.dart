import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/core/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ShowbottomBarAppBar extends StatelessWidget {
  const ShowbottomBarAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 16.h),
        width: double.infinity,
        height: 80.h,
        decoration: BoxDecoration(
          color: AppColors.pastelBlue,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(28),
            topLeft: Radius.circular(28),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: 24.w,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: SvgPicture.asset(AppIcons.question),
                ),
                Text(
                  "Filter",
                  style: TextStyle(
                    fontFamily: "Plus Jakarta Sans",
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: SvgPicture.asset(AppIcons.close),
            ),
          ],
        ),
      ),
    );
  }
}
