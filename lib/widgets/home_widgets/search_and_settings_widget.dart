import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/core/utils/icons.dart';
import 'package:barbershop/widgets/elevatedbutton_item.dart';
import 'package:barbershop/widgets/home_widgets/distance_item.dart';
import 'package:barbershop/widgets/home_widgets/general_category_widget.dart';
import 'package:barbershop/widgets/home_widgets/rating_barber_widget.dart';
import 'package:barbershop/widgets/home_widgets/searchbar_widget.dart';
import 'package:barbershop/widgets/home_widgets/showbottom_bar_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchAndSettingsWidget extends StatelessWidget {
  const SearchAndSettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SearchBarWidget(),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (BuildContext context) {
                return Container(
                  width: double.infinity,
                  height: 600,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(28),
                      topLeft: Radius.circular(28),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShowbottomBarAppBar(),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                          right: 18.w,
                          left: 18.w,
                        ),
                        child: Column(
                          spacing: 24.h,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GeneralCategoryWidget(),
                            RatingBarberWidget(),
                            Row(
                              spacing: 12,
                              children: [
                                DistanceItem(title: 'Nearest', text: '0.1'),
                                Container(
                                  width: 12,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: AppColors.appDarkBlue,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                DistanceItem(title: 'Farthest', text: '10'),
                              ],
                            ),
                            ElevatedbuttonItem(
                              text: "Apply",
                              callback: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Container(
            width: 44.w,
            height: 44.h,
            decoration: BoxDecoration(
              color: AppColors.appDarkBlue,
              borderRadius: BorderRadius.circular(8),
            ),
            alignment: Alignment.center,
            child: SvgPicture.asset(AppIcons.setting4),
          ),
        ),
      ],
    );
  }
}
