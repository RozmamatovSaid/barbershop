import 'package:barbershop/widgets/main_text_item.dart';
import 'package:barbershop/widgets/home_widgets/nearest_barbershop_item.dart';
import 'package:barbershop/widgets/home_widgets/see_all_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/images.dart';

class NearestFirstWidget extends StatelessWidget {
  const NearestFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16.h,
      children: [
        MainTextItem(title: "Nearest Babershop"),
        NearestBarbershopItem(
          image: AppImages.alanaBarber,
          title: "Alana Barbershop - Haircut massage & Spa",
          location: "Banguntapan (5 km)",
          rating: "4.5",
        ),
        NearestBarbershopItem(
          image: AppImages.herchaBarber,
          title: "Hercha Barbershop - Haircut & Styling",
          location: "Jalan Kaliurang (8 km)",
          rating: "5.0",
        ),
        NearestBarbershopItem(
          image: AppImages.barberKing,
          title: "Barberking - Haircut styling & massage",
          location: "Jogja Expo Centre (12 km)",
          rating: "4.5",
        ),
        SeeAllWidget(callback: () {}),
      ],
    );
  }
}
