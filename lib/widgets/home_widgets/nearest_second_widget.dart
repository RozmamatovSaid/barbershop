import 'package:barbershop/widgets/home_widgets/nearest_barbershop_item.dart';
import 'package:barbershop/widgets/home_widgets/see_all_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/images.dart';

class NearestSecondWidget extends StatelessWidget {
  const NearestSecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 16.h,
      children: [
        NearestBarbershopItem(
          image: AppImages.varcityBarbershop,
          title: "Varcity Barbershop Jogja ex The Varcher",
          location: "Condongcatur (10 km)",
          rating: "4.5",
        ),
        NearestBarbershopItem(
          image: AppImages.twinskyMonkey,
          title: "Twinsky Monkey Barber & Men Stuff",
          location: "Jl Taman Siswa (8 km)",
          rating: "5.0",
        ),
        NearestBarbershopItem(
          image: AppImages.barberMan,
          title: "Barberman - Haircut styling & massage",
          location: "J-Walk Centre  (17 km)",
          rating: "4.5",
        ),
        SeeAllWidget(callback: () {}),
      ],
    );
  }
}
