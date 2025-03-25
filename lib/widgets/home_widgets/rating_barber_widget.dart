import 'package:barbershop/core/utils/icons.dart';
import 'package:barbershop/widgets/home_widgets/general_category_text_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RatingBarberWidget extends StatelessWidget {
  const RatingBarberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 18,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GeneralCategoryTextItem(text: "Rating Barber"),
        Row(
          spacing: 18.w,
          children: List.generate(
            5,
            (index) => SvgPicture.asset(
              index < 4 ? AppIcons.fullStar : AppIcons.emptyStar,
            ),
          ),
        ),
        Slider(value: 0.5, onChanged: (value) {}),
      ],
    );
  }
}
