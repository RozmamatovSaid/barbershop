import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/core/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SeeAllWidget extends StatelessWidget {
  const SeeAllWidget({super.key, required this.callback});
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: callback,
        child: Container(
          width: 133.w,
          height: 48.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.appDarkBlue, width: 2),
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "See All",
                style: TextStyle(
                  color: AppColors.appDarkBlue,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Plus Jakarta Sans",
                ),
              ),
              SvgPicture.asset(AppIcons.arrowRightUp),
            ],
          ),
        ),
      ),
    );
  }
}
