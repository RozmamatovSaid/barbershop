import 'package:barbershop/core/utils/colors.dart';
import 'package:barbershop/widgets/home_widgets/general_category_text_item.dart';
import 'package:flutter/material.dart';

class DistanceItem extends StatelessWidget {
  const DistanceItem({super.key, required this.title, required this.text});
  final String title,text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GeneralCategoryTextItem(text: title),
        SizedBox(height: 18),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4,
              children: [
                Text("Nearest", style: TextStyle(color: Color(0xFF8683A1))),
                Row(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 48,
                      height: 39,
                      decoration: BoxDecoration(
                        color: AppColors.pastelBlue,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: AppColors.appDarkBlue),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        text,
                        style: TextStyle(
                          color: AppColors.appDarkBlue,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Text(
                      "km",
                      style: TextStyle(
                        color: AppColors.appDarkBlue,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
