import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GeneralCategoryButton extends StatelessWidget {
  const GeneralCategoryButton({
    super.key,
    required this.borderColor,
    required this.backgroundColor,
    required this.title,
    required this.textColor,
  });

  final Color borderColor, backgroundColor, textColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 35.h,
        width: 105.w,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontFamily: "Plus Jakarta Sans",
          ),
        ),
      ),
    );
  }
}
