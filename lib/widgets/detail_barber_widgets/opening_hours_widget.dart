import 'package:barbershop/widgets/detail_barber_widgets/opening_hour_item.dart';
import 'package:barbershop/widgets/home_widgets/general_category_text_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OpeningHoursWidget extends StatelessWidget {
  const OpeningHoursWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GeneralCategoryTextItem(text: "Opening Hours"),
        OpeningHourItem(
          text: "Monday - friday",
          hours: "09.00  am - 08.00 pm ",
        ),
        OpeningHourItem(
          text: "Saturday - Sunday",
          hours: "09.00  am - 09.00 pm ",
        ),
      ],
    );
  }
}
