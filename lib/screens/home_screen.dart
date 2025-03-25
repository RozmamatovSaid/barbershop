import 'package:barbershop/routing/routes.dart';
import 'package:barbershop/widgets/home_widgets/most_recommended_widget.dart';
import 'package:barbershop/widgets/home_widgets/home_appbar_widget.dart';
import 'package:barbershop/widgets/home_widgets/booking_card_home_widget.dart';
import 'package:barbershop/widgets/home_widgets/most_recommended_map_barbershops.dart';
import 'package:barbershop/widgets/home_widgets/nearest_first_widget.dart';
import 'package:barbershop/widgets/home_widgets/nearest_second_widget.dart';
import 'package:barbershop/widgets/home_widgets/search_and_settings_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../widgets/home_widgets/bottom_nav_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HomeAppbarWidget(),
      body: ListView(
        padding: EdgeInsets.only(right: 17.w, left: 17.w, bottom: 100),
        children: [
          SizedBox(height: 20.h),
          BookingCardHomeWidget(),
          SizedBox(height: 24.h),
          SearchAndSettingsWidget(),
          SizedBox(height: 16),
          NearestFirstWidget(),
          SizedBox(height: 24.h),
          MostRecommendedWidget(
            callback: () {
              context.push(Routes.detailBarber);
            },
          ),
          SizedBox(height: 40.h),
          NearestSecondWidget(),
          SizedBox(height: 24),
          MostRecomendedWidget(),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
