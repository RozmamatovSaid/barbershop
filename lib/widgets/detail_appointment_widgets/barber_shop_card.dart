import 'package:barbershop/core/utils/images.dart';
import 'package:barbershop/widgets/location_item.dart';
import 'package:barbershop/widgets/rating_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BarberShopCard extends StatelessWidget {
  const BarberShopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 32.h,
      right: 0,
      left: 0,
      child: Center(
        child: Container(
          padding: EdgeInsets.all(8),
          width: 339,
          height: 94,
          decoration: BoxDecoration(
            color: Colors.deepPurple.withValues(alpha: 0.3),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            spacing: 12,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  AppImages.masterPiece,
                  fit: BoxFit.cover,
                  width: 78,
                  height: 78,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Master piece Barbershop - Haircut styling",
                      maxLines: 1,
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    LocationItem(
                      title: "Jogja Expo Centre  (2 km)",
                      iconColor: Colors.white,
                      textColor: Colors.white,
                    ),
                    RatingItem(
                      rating: "5.0  (24)",
                      textColor: Colors.white,
                      iconColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
