import 'package:barbershop/core/utils/icons.dart';
import 'package:barbershop/routing/routes.dart';
import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/widgets/auth_link_item.dart';
import 'package:barbershop/widgets/elevatedbutton_item.dart';
import 'package:barbershop/widgets/textformfield_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.h),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Register here ",
                  style: TextStyle(
                    fontFamily: "Plus Jakarta Sans",
                    color: AppColors.appDarkBlue,
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Please enter your data to complete your account registration process",
                  style: TextStyle(
                    color: AppColors.appGrey,
                    fontSize: 16.sp,
                    fontFamily: "Plus Jakarta Sans",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
        children: [
          Column(
            spacing: 18.h,
            children: [
              SizedBox(height: 8.h),
              TextFormFieldItem(
                title: 'Name',
                svg: 'assets/icons/user.svg',
                hintText: 'Joe Samanta',
              ),
              TextFormFieldItem(
                title: 'Email',
                svg: 'assets/icons/email.svg',
                hintText: 'Joesamanta@gmail.com',
              ),
              TextFormFieldItem(
                title: "Create password",
                svg: 'assets/icons/password-key.svg',
                hintText: '********',
                isTrue: true,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  Text(
                    'Phone number',
                    style: TextStyle(
                      fontFamily: "Plus Jakarta Sans",
                      color: AppColors.appDarkBlue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  IntlPhoneField(
                    decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: AppColors.appDarkBlue),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: AppColors.appDarkBlue),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.appDarkBlue),
                        borderRadius: BorderRadius.circular(10).r,
                      ),
                    ),
                    onChanged: (phone) {},
                  ),
                ],
              ),
              TextFormFieldItem(
                title: "Confirm password",
                svg: AppIcons.passwordKey,
                hintText: '********',
                isTrue: true,
              ),
              ElevatedbuttonItem(text: "Register", callback: () {}),
              AuthLinkItem(
                text: "Already have an account?",
                link: "Login",
                callback: () => context.go(Routes.login),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
