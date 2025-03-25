import 'package:flutter/material.dart';

class PaymentSummaryItem extends StatelessWidget {
  const PaymentSummaryItem({
    super.key,
    required this.title,
    required this.price,
    this.priceFontWeight = FontWeight.w500,
    this.fontSize = 16,
  });

  final String title;
  final num price;
  final FontWeight priceFontWeight;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w500),
        ),
        Text(
          "\$${price}",
          style: TextStyle(fontSize: 16, fontWeight: priceFontWeight),
        ),
      ],
    );
  }
}
