import 'package:flutter/material.dart';
class MainTextItem extends StatelessWidget {
  const MainTextItem({super.key, required this.title, this.fontSize = 18});

  final String title;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        fontFamily: "Nearest Babershop",
      ),
    );
  }
}
