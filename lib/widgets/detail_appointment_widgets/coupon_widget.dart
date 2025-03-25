import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/core/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CouponInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 339.w,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: SizedBox(
                  width: 24,
                  height: 24,
                  child: Center(child: SvgPicture.asset(AppIcons.discount)),
                ),
                hintText: "Enter coupon",
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
              ),
            ),
          ),
          Container(
            height: 72.h,
            width: 48.w,
            decoration: BoxDecoration(
              color: AppColors.appDarkBlue,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8.r),
                bottomRight: Radius.circular(8.r),
              ),
            ),
            child: Center(
              child: Text(
                "Apply",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
