import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/core/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../core/utils/fontfamily.dart';
import '../book_appointment_widget/payment_summary_item.dart';
import '../dashed_line_item.dart';

class ConfirmationCard extends StatelessWidget {
  const ConfirmationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 408.h,
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 24.h),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(28.r),
            topRight: Radius.circular(28.r),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Master piece Barbershop - Haircut styling",
                      style: TextStyle(
                        color: AppColors.appDark,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: AppFontFamily.plusJakartaSans,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  SizedBox(width: 59.w),
                  Text(
                    "Sun, 15 Jan",
                    style: TextStyle(
                      color: AppColors.appGrey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Text(
                "Basic haircut , Message",
                style: TextStyle(
                  color: AppColors.appGrey,
                  fontSize: 16,
                  fontFamily: AppFontFamily.plusJakartaSans,
                ),
              ),
              SizedBox(height: 16.h),
              Column(
                spacing: 18.h,
                children: [
                  PaymentSummaryItem(title: "Basic haircut", price: 20),
                  PaymentSummaryItem(title: "Extra massage", price: 10),
                  PaymentSummaryItem(title: "Coupon discount", price: -5),
                  DashedLineItem(howMany: 20),
                  PaymentSummaryItem(
                    title: "Total price",
                    price: 25,
                    priceFontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: Text(
                      "Back",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      maximumSize: Size(128.w, 54.h),
                      minimumSize: Size(128.w, 54.h),
                      backgroundColor: AppColors.appDarkBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.pop();
                    },
                    style: ElevatedButton.styleFrom(
                      maximumSize: Size(170.w, 54.h),
                      minimumSize: Size(170.w, 54.h),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: AppColors.appDarkBlue,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Download",
                          style: TextStyle(
                            color: AppColors.appDarkBlue,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SvgPicture.asset(AppIcons.download),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
