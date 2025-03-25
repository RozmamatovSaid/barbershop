import 'package:barbershop/widgets/book_appointment_widget/payment_summary_item.dart';
import 'package:barbershop/widgets/dashed_line_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentSummaryWidget extends StatelessWidget {
  const PaymentSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 18.h,
      children: [
        PaymentSummaryItem(title: "Basic haircut", price: 20),
        PaymentSummaryItem(title: "Extra massage", price: 10),
        DashedLineItem(howMany: 20),
        PaymentSummaryItem(
          title: "Service fee",
          price: 25,
          priceFontWeight: FontWeight.w700,
          fontSize: 18,
        ),
      ],
    );
  }
}
