import 'package:barbershop/widgets/home_widgets/bottom_nav_bar_icon_item.dart';
import 'package:flutter/material.dart';

import '../../core/utils/icons.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      width: double.infinity,
      height: 63,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavBarIconItem(icon: AppIcons.home, text: 'Home'),
          BottomNavBarIconItem(icon: AppIcons.calendarIcon, text: "Booking"),
          BottomNavBarIconItem(icon: AppIcons.chat, text: "Chat"),
          BottomNavBarIconItem(icon: AppIcons.user, text: "Profile"),
        ],
      ),
    );
  }
}
