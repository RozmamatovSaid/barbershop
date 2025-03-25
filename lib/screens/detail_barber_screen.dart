import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/widgets/app_bar_item.dart';
import 'package:barbershop/widgets/detail_barber_widgets/tab_bar_action_buttons.dart';
import 'package:barbershop/widgets/detail_barber_widgets/tab_bar_service_widget.dart';
import 'package:barbershop/widgets/detail_barber_widgets/action_button_widget.dart';
import 'package:barbershop/widgets/detail_barber_widgets/tab_bar_about_widget.dart';
import 'package:barbershop/widgets/home_widgets/most_recommended_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailBarberScreen extends StatefulWidget {
  const DetailBarberScreen({super.key});

  @override
  State<DetailBarberScreen> createState() => _DetailBarberScreenState();
}
class _DetailBarberScreenState extends State<DetailBarberScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBarItem(
          title: "Detail Barber",
          iconColor: AppColors.appDarkBlue,
          titleColor: AppColors.appDarkBlue,
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.h),
              child: Column(
                children: [
                  MostRecommendedWidget(callback: () {}, cardIsTop: true),
                  SizedBox(height: 12),
                  ActionButtonWidget(),
                ],
              ),
            ),
            TabBarActionButtons(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
              child: SizedBox(
                height: 600,
                child: TabBarView(
                  children: [
                    TabBarAboutWidget(),
                    TabBarServiceWidget(),
                    Column(children: []),
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
