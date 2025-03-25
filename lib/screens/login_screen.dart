import 'package:barbershop/core/utils/images.dart';
import 'package:barbershop/routing/routes.dart';
import 'package:barbershop/widgets/auth_link_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/widgets/elevatedbutton_item.dart';
import 'package:barbershop/widgets/textformfield_item.dart';
import 'package:go_router/go_router.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(decoration: BoxDecoration(color: AppColors.appOrange)),
          Align(
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
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Image.asset(AppImages.person4),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
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
                    Text(
                      "Welcome back 👋",
                      style: TextStyle(
                        fontFamily: "Plus Jakarta Sans",
                        color: AppColors.appDarkBlue,
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      "Please enter your login information below to access your account",
                      style: TextStyle(
                        fontFamily: "Plus Jakarta Sans",
                        color: AppColors.appGrey,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Form(
                      child: Column(
                        children: [
                          TextFormFieldItem(
                            hintText: 'Joesamanta@gmail.com',
                            svg: 'assets/icons/email.svg',
                            title: 'User name',
                          ),
                          SizedBox(height: 16.h),
                          TextFormFieldItem(
                            title: "Password",
                            hintText: "* * * * * * * *",
                            svg: 'assets/icons/password-key.svg',
                            isTrue: true,
                          ),
                          SizedBox(height: 8.h),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot password?',
                                style: TextStyle(
                                  color: AppColors.appDarkBlue,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.h),
                          ElevatedbuttonItem(
                            text: "Login",
                            callback: () {
                              context.go(Routes.home);
                            },
                          ),
                          SizedBox(height: 16.h),
                          AuthLinkItem(
                            text: "Don't have an account? ",
                            link: "Register",
                            callback: () => context.go(Routes.register),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
