import 'package:barbershop/core/utils/icons.dart';
import 'package:barbershop/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/fontfamily.dart';

class SuccessBookingWidget extends StatelessWidget {
  const SuccessBookingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Stack(
        children: [
          Image(
            image: AssetImage(AppImages.background),
            fit: BoxFit.cover,
            width: double.infinity,
            height: 424.h,
          ),
          Positioned(
            top: 56,
            right: 0,
            left: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 70),
              child: Column(
                children: [
                  SvgPicture.asset(
                    AppIcons.subtract,
                    width: 116.w,
                    height: 116.h,
                  ),
                  SizedBox(height: 18),
                  Text(
                    "Booking Succesfully",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: AppFontFamily.plusJakartaSans,
                    ),
                  ),
                  Text(
                    "Immediately check the booking menu for detailed information",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: AppFontFamily.plusJakartaSans,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
