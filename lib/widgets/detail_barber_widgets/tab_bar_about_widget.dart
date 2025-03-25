import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/core/utils/images.dart';
import 'package:barbershop/routing/routes.dart';
import 'package:barbershop/widgets/detail_barber_widgets/opening_hours_widget.dart';
import 'package:barbershop/widgets/detail_barber_widgets/service_list.dart';
import 'package:barbershop/widgets/elevatedbutton_item.dart';
import 'package:barbershop/widgets/main_text_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TabBarAboutWidget extends StatelessWidget {
  const TabBarAboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "At Masterpiece Barbershop, our dedicated team of skilled barbers are true artists in their craft, transforming your hair, Read more...",
          style: TextStyle(
            color: AppColors.appDark,
            fontSize: 16,
            fontFamily: "Plus Jakarta Sans",
          ),
        ),
        SizedBox(height: 12),
        OpeningHoursWidget(),
        SizedBox(height: 18),
        MainTextItem(title: "Our Tim"),
        SizedBox(height: 12),
        Column(
          spacing: 11,
          children: [
            ServiceList(
              avatar: AppImages.luther,
              fullName: "Luther Hammes",
              subtitle: "Specialist Haircut",
              rating: "4.5",
            ),
            ServiceList(
              avatar: AppImages.emanuel,
              fullName: "Emanuel Bernier",
              subtitle: "Specialist Coloring",
              rating: "4.5",
            ),
            ServiceList(
              avatar: AppImages.karl,
              fullName: "Karl Vandervort",
              subtitle: "Specialist Treatment",
              rating: "4.5",
            ),
            SizedBox(height: 28),
            ElevatedbuttonItem(
              text: "Booking Now",
              callback: () {
                context.push(Routes.bookAppointment);
              },
            ),
          ],
        ),
      ],
    );
  }
}
