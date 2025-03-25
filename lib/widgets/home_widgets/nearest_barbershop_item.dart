import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/routing/routes.dart';
import 'package:barbershop/widgets/location_item.dart';
import 'package:barbershop/widgets/rating_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class NearestBarbershopItem extends StatelessWidget {
  const NearestBarbershopItem({
    super.key,
    required this.image,
    required this.title,
    required this.location,
    required this.rating,
  });

  final String image;
  final String title;
  final String location;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12.w,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            context.push(Routes.detailBarber);
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              image,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Flexible(
          child: Column(
            spacing: 5.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                style: TextStyle(
                  color: AppColors.appDark,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              LocationItem(
                title: location,
                iconColor: Colors.grey,
                textColor: Colors.grey,
              ),
              RatingItem(rating: rating),
            ],
          ),
        ),
      ],
    );
  }
}
