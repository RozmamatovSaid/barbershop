import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/core/utils/icons.dart';
import 'package:barbershop/widgets/location_item.dart';
import 'package:barbershop/widgets/main_text_item.dart';
import 'package:barbershop/widgets/rating_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/images.dart';

class MostRecommendedWidget extends StatelessWidget {
  const MostRecommendedWidget({
    super.key,
    required this.callback,
    this.cardIsTop = false,
    this.cardColor = AppColors.appDarkBlue,
  });

  final VoidCallback callback;
  final bool cardIsTop;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    var blueCard = Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        width: 129,
        height: 42,
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Booking",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            SvgPicture.asset(AppIcons.calendarMark),
          ],
        ),
      ),
    );
    var greenCard = Positioned(
      top: 0,
      right: 0,
      child: Container(
        height: 42,
        decoration: BoxDecoration(
          color: AppColors.appGreen,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                SizedBox(width: 12),
                Text(
                  "Booking",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 12),
              ],
            ),
          ],
        ),
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        MainTextItem(title: "Most recommended"),
        Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: GestureDetector(
                    onTap: callback,
                    child: Image(
                      image: AssetImage(AppImages.masterBarber),
                      width: double.infinity,
                      height: 216,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                cardIsTop == true ? greenCard : blueCard,
              ],
            ),
            Text(
              "Master piece Barbershop - Haircut styling",
              style: TextStyle(
                color: AppColors.appDarkBlue,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            LocationItem(
              title: "Joga Expo Centre  (2 km)",
              textColor: Colors.grey,
              iconColor: Colors.grey,
            ),
            RatingItem(rating: "5.0"),
          ],
        ),
      ],
    );
  }
}
