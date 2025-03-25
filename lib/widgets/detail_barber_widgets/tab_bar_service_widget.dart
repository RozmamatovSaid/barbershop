import 'package:barbershop/core/utils/images.dart';
import 'package:barbershop/routing/routes.dart';
import 'package:barbershop/widgets/detail_barber_widgets/service_list.dart';
import 'package:barbershop/widgets/elevatedbutton_item.dart';
import 'package:barbershop/widgets/main_text_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TabBarServiceWidget extends StatelessWidget {
  const TabBarServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTextItem(title: "Our Service", fontSize: 16),
        ServiceList(
          avatar: AppImages.basic,
          fullName: 'Basic haircut',
          subtitle: 'Basic haircut & vitamint',
          isPrice: true,
          price: 20,
        ),
        ServiceList(
          avatar: AppImages.kids,
          fullName: 'Kids haircut',
          subtitle: 'Special kids haircut',
          isPrice: true,
          price: 15,
        ),
        ServiceList(
          avatar: AppImages.hair,
          fullName: 'Hair coloring',
          subtitle: 'Hair color treatment',
          isPrice: true,
          price: 30,
        ),
        ServiceList(
          avatar: AppImages.hairTreatment,
          fullName: 'Hair treatment',
          subtitle: 'Special full treatment',
          isPrice: true,
          price: 10,
        ),
        ServiceList(
          avatar: AppImages.massage,
          fullName: 'Special massage',
          subtitle: 'Additional massage',
          isPrice: true,
          price: 10,
        ),
        SizedBox(height: 13),
        ElevatedbuttonItem(text: "Booking Now", callback: () {
          context.push(Routes.bookAppointment);
        }),
      ],
    );
  }
}
