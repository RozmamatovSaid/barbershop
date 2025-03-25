import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/core/utils/fontfamily.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvailableTimeWidget extends StatelessWidget {
  AvailableTimeWidget({super.key});

  List<String> AvailableTime = [
    "08 : 00",
    "08 : 30",
    "09 : 00",
    "09 : 30",
    "10: 00",
    "10: 30",
    "11 :30",
    "13:00",
    "15 : 30",
    "16 : 00",
    "17 : 00",
    "17 : 30",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 30,
        crossAxisCount: 4,
        mainAxisSpacing: 12.h,
        crossAxisSpacing: 12.w,
      ),
      itemCount: AvailableTime.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.appDarkBlue, width: 2),
          ),
          alignment: Alignment.center,
          child: Text(
            AvailableTime[index],
            style: TextStyle(
              fontFamily: AppFontFamily.plusJakartaSans,
              fontWeight: FontWeight.w500,
            ),
          ),
        );
      },
    );
  }
}
