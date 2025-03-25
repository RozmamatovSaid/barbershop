import 'package:flutter/material.dart';

class GeneralCategoryTextItem extends StatelessWidget {
  const GeneralCategoryTextItem({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: "Plus Jakarta Sans",
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
