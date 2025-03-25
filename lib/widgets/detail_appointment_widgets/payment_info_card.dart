import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/core/utils/icons.dart';
import 'package:barbershop/core/utils/images.dart';
import 'package:barbershop/routing/routes.dart';
import 'package:barbershop/widgets/detail_appointment_widgets/coupon_widget.dart';
import 'package:barbershop/widgets/detail_barber_widgets/service_list.dart';
import 'package:barbershop/widgets/elevatedbutton_item.dart';
import 'package:barbershop/widgets/main_text_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../book_appointment_widget/payment_summary_item.dart';
import '../dashed_line_item.dart';

class PaymentInfoCard extends StatelessWidget {
  const PaymentInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 158,
      right: 0,
      left: 0,
      child: Container(
        padding: EdgeInsets.only(
          top: 20.h,
          right: 20.w,
          left: 20.w,
          bottom: 120,
        ),
        height: 694.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(28),
            topLeft: Radius.circular(28),
          ),
        ),
        child: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 4,
              children: [
                SvgPicture.asset(
                  AppIcons.fullCalendar,
                  width: 18.w,
                  height: 18.h,
                ),
                MainTextItem(title: "Date & time", fontSize: 16.sp),
              ],
            ),
            SizedBox(height: 8.h),
            Text(
              "Sun, 15 Jan  - 08:00 AM",
              style: TextStyle(
                color: AppColors.appGrey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 24.h),
            Row(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  AppIcons.servise,
                  width: 18,
                  height: 18,
                  colorFilter: ColorFilter.mode(
                    AppColors.appDark,
                    BlendMode.srcIn,
                  ),
                ),
                MainTextItem(title: "Service lits", fontSize: 16),
              ],
            ),
            SizedBox(height: 8.h),
            ServiceList(
              avatar: AppImages.basic,
              fullName: "Basic haircut",
              subtitle: "Basic haircut & vitamint",
              isPrice: true,
              price: 20,
            ),
            SizedBox(height: 8.h),

            ServiceList(
              avatar: AppImages.massage,
              fullName: "Massage",
              subtitle: "Extra massage",
              isPrice: true,
              price: 10,
            ),
            SizedBox(height: 24.h),
            MainTextItem(title: "Apply Coupon", fontSize: 16),
            SizedBox(height: 8),
            CouponInput(),
            SizedBox(height: 24),
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
            SizedBox(height: 26.h),
            ElevatedbuttonItem(
              text: "Pay now",
              callback: () {
                context.push(Routes.invoice);
              },
              isTrue: true,
              svg: AppIcons.cash,
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
