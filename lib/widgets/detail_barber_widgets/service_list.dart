import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/widgets/rating_item.dart';
import 'package:flutter/material.dart';
class ServiceList extends StatelessWidget {
  const ServiceList({
    super.key,
    required this.avatar,
    required this.fullName,
    required this.subtitle,
    this.rating = '',
    this.isPrice = false,
    this.price = 0,
  });

  final String avatar, fullName, subtitle, rating;
  final bool isPrice;
  final num price;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 8,
          children: [
            Stack(
              children: [
                CircleAvatar(backgroundImage: AssetImage(avatar), radius: 23),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fullName,
                  style: TextStyle(
                    fontFamily: "Plus Jakarta Sans",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(subtitle, style: TextStyle(color: AppColors.appGrey)),
              ],
            ),
          ],
        ),
        isPrice == false
            ? RatingItem(rating: rating)
            : Text(
              "\$${price}",
              style: TextStyle(
                color: AppColors.appDark,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
      ],
    );
  }
}