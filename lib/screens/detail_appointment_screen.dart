import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/core/utils/images.dart';
import 'package:barbershop/widgets/detail_appointment_widgets/payment_info_card.dart';
import 'package:barbershop/widgets/app_bar_item.dart';
import 'package:barbershop/widgets/detail_appointment_widgets/barber_shop_card.dart';
import 'package:flutter/material.dart';

class DetailAppointmentScreen extends StatelessWidget {
  const DetailAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarItem(
        title: "Your Appointment",
        backgroundColor: AppColors.appDarkBlue,
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(color: AppColors.appDarkBlue),
            child: Image.asset(
              AppImages.background,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Positioned(top: 32, right: 0, left: 0, child: BarberShopCard()),
          PaymentInfoCard(),
        ],
      ),
    );
  }
}
