import 'package:barbershop/core/utils/colors.dart';
import 'package:flutter/material.dart';

class DotIndicatorContainer extends StatelessWidget {
  const DotIndicatorContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 8,
      decoration: BoxDecoration(
        color: AppColors.appDarkBlue,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
