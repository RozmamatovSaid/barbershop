import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/widgets/app_bar_item.dart';
import 'package:barbershop/widgets/invoice_widgets/confirmation_card.dart';
import 'package:barbershop/widgets/invoice_widgets/success_booking_widget.dart';
import 'package:flutter/material.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarItem(
        title: "Invoice",
        backgroundColor: AppColors.appDarkBlue,
      ),
      body: Stack(
        children: [
          Container(decoration: BoxDecoration(color: AppColors.appDarkBlue)),
          SuccessBookingWidget(),
          ConfirmationCard(),
        ],
      ),
    );
  }
}
