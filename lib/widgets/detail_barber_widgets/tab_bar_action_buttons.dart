import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/core/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TabBarActionButtons extends StatelessWidget {
  const TabBarActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: AppColors.pastelBlue,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TabBar(
        indicatorColor: Colors.blue,
        labelColor: Colors.blue.shade800,
        unselectedLabelColor: Colors.grey,
        tabs: [
          Tab(
            icon: SvgPicture.asset(
              AppIcons.about,
              colorFilter: ColorFilter.mode(
                AppColors.appDarkBlue,
                BlendMode.srcIn,
              ),
            ),
          ),
          Tab(
            icon: SvgPicture.asset(
              AppIcons.servise,
              colorFilter: ColorFilter.mode(
                AppColors.appDarkBlue,
                BlendMode.srcIn,
              ),
            ),
          ),
          Tab(
            icon: SvgPicture.asset(
              AppIcons.calendarIcon,
              colorFilter: ColorFilter.mode(
                AppColors.appDarkBlue,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
