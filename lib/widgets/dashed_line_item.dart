import 'package:barbershop/core/utils/colors.dart';
import 'package:flutter/material.dart';

class DashedLineItem extends StatelessWidget {
  const DashedLineItem({super.key, required this.howMany});
  final int howMany;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        howMany,
        (index) => Container(
          width: 12,
          height: 1,
          decoration: BoxDecoration(
            color: AppColors.appGrey,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
