import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/core/utils/images.dart';
import 'package:barbershop/core/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BookingCardHomeWidget extends StatelessWidget {
  const BookingCardHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 339.w,
              height: 225.h,
              decoration: BoxDecoration(
                color: AppColors.appOrange,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                AppImages.background,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.none,
              ),
            ),
            Positioned(
              top: -7.h,
              left: 142.w,
              child: Image.asset(
                AppImages.person3,
                width: 254.w,
                height: 284.h,
              ),
            ),
            Positioned(
              top: 13,
              left: 12,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.6),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: SvgPicture.asset(AppIcons.gobarLogo),
              ),
            ),
            Positioned(
              bottom: 12,
              left: 17,
              child: Container(
                width: 116,
                height: 42,
                decoration: BoxDecoration(
                  color: AppColors.appDarkBlue,
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Booking Now",
                  style: TextStyle(
                    fontFamily: "Plus Jakarta Sans",
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
