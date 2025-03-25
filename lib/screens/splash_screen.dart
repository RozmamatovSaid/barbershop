import 'package:barbershop/core/utils/icons.dart';
import 'package:barbershop/routing/routes.dart';
import 'package:barbershop/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      if (mounted) {
        context.go(Routes.onboarding);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appDarkBlue,
      body: Center(
        child: SvgPicture.asset(
          AppIcons.gobarLogo,
          width: 100.w,
          height: 142.h,
        ),
      ),
    );
  }
}
