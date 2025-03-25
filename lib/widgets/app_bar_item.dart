import 'package:barbershop/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/utils/fontfamily.dart';

class AppBarItem extends StatelessWidget implements PreferredSizeWidget {
  const AppBarItem({
    super.key,
    required this.title,
    this.titleColor = Colors.white,
    this.iconColor = Colors.white,
    this.backgroundColor = Colors.white,
  });

  final String title;
  final Color titleColor, iconColor, backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency: true,
      iconTheme: IconThemeData(color: iconColor),
      backgroundColor: backgroundColor,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          fontFamily: AppFontFamily.plusJakartaSans,
          color: titleColor,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 52.h);
}
