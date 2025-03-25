import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/core/utils/images.dart';
import 'package:barbershop/routing/routes.dart';
import 'package:barbershop/widgets/onboarding_widget/dot_indicator_container.dart';
import 'package:barbershop/widgets/elevatedbutton_item.dart';
import 'package:barbershop/widgets/onboarding_widget/dot_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> _pages = [
    {
      'image': AppImages.person1,
      'title': 'Welcome Gobars',
      'subtitle':
          "Find the best grooming experience in your city with just one tap! Don't miss out on the haircut or treatment of your dreams. Let's start now!",
    },
    {
      'image': AppImages.person2,
      'title': 'Loooking for barber?',
      'subtitle':
          "Find the best barbershop around you in seconds, make an appointment, and enjoy the best grooming experience.",
    },
    {
      'image': AppImages.person3,
      'title': "Everything in your hands",
      'subtitle':
          "With Gobar, find high-quality barbershops, see reviews, and make appointments easily. Achieve your confident appearance!",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.withValues(alpha: 0.6),
        child: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: _pages.length,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Image.asset(
                  _pages[index]['image']!,
                  fit: BoxFit.contain,
                );
              },
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 18.w),
                width: double.infinity,
                height: 253,
                decoration: BoxDecoration(
                  color: AppColors.appOrange,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28),
                    topRight: Radius.circular(28),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      _pages[_currentIndex]['title']!,
                      style: TextStyle(
                        fontFamily: "Plus Jakarta Sans",
                        color: Colors.white,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      _pages[_currentIndex]['subtitle']!,
                      style: TextStyle(color: Colors.white, fontSize: 14.sp),
                    ),
                    Row(
                      spacing: 8,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        _pages.length,
                        (index) =>
                            index == _currentIndex
                                ? DotIndicatorContainer()
                                : DotContainer(),
                      ),
                    ),
                    ElevatedbuttonItem(
                      text: 'Get Started',
                      callback: () {
                        _currentIndex < _pages.length - 1
                            ? _pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.linear,
                            )
                            : context.go(Routes.login);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
