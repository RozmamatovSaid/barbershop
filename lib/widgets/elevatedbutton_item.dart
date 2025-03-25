import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/core/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ElevatedbuttonItem extends StatelessWidget {
  const ElevatedbuttonItem({
    super.key,
    required this.text,
    required this.callback,
    this.isTrue = false,
    this.svg = AppIcons.cash,
  });

  final String text;
  final VoidCallback callback;
  final bool isTrue;
  final String svg;

  @override
  Widget build(BuildContext context) {
    var isText = Text(
      text,
      style: TextStyle(
        fontFamily: "Plus Jakarta Sans",
        color: Colors.white,
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
      ),
    );
    var isWithSvg = Row(
      spacing: 11.w,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
            fontFamily: "Plus Jakarta Sans",
            color: Colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        SvgPicture.asset(svg),
      ],
    );
    return ElevatedButton(
      onPressed: callback,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.appDarkBlue,
        maximumSize: Size(double.infinity, 54.h),
        minimumSize: Size(double.infinity, 54.h),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: isTrue ? isWithSvg : isText,
    );
  }
}
