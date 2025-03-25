import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/widgets/home_widgets/general_category_button.dart';
import 'package:barbershop/widgets/home_widgets/general_category_text_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GeneralCategoryWidget extends StatelessWidget {
  const GeneralCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GeneralCategoryTextItem(text: "General Category"),
        SizedBox(height: 18.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GeneralCategoryButton(
              borderColor: AppColors.appDarkBlue,
              backgroundColor: AppColors.pastelBlue,
              title: 'Basic haircut',
              textColor: AppColors.appDarkBlue,
            ),
            GeneralCategoryButton(
              borderColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              title: 'Coloring',
              textColor: AppColors.appDarkBlue,
            ),
            GeneralCategoryButton(
              borderColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              title: 'Treatment',
              textColor: AppColors.appDarkBlue,
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Row(
          spacing: 12,
          children: [
            GeneralCategoryButton(
              borderColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              title: 'Massage',
              textColor: AppColors.appDarkBlue,
            ),
            GeneralCategoryButton(
              borderColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              title: 'Kids haircut',
              textColor: AppColors.appDarkBlue,
            ),
          ],
        ),
      ],
    );
  }
}
