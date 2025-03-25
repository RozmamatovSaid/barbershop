import 'package:barbershop/widgets/book_appointment_widget/choose_service_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/images.dart';

class ChooseServiceWidget extends StatelessWidget {
  const ChooseServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 18.w,
        children: [
          ChooseServiceItem(
            image: AppImages.basic,
            title: "Basic haircut",
            price: 20,
          ),
          ChooseServiceItem(
            image: AppImages.kids,
            title: "Kids haircut",
            price: 15,
          ),
          ChooseServiceItem(
            image: AppImages.hair,
            title: "Hair color",
            price: 30,
          ),
          ChooseServiceItem(
            image: AppImages.hairTreatment,
            title: "Hair treatment",
            price: 10,
          ),
        ],
      ),
    );
  }
}
