import 'package:barbershop/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthLinkItem extends StatelessWidget {
  const AuthLinkItem({
    super.key,
    required this.text,
    required this.link,
    required this.callback,
  });
  final String text, link;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
            fontFamily: "Plus Jakarta Sans",
            color: AppColors.appGrey,
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        TextButton(
          onPressed: callback,
          child: Text(
            link,
            style: TextStyle(
              fontFamily: "Plus Jakarta Sans",
              color: AppColors.appDarkBlue,
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
