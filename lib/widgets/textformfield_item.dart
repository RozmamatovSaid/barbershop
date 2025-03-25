// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:barbershop/core/utils/colors.dart';

class TextFormFieldItem extends StatefulWidget {
  const TextFormFieldItem({
    super.key,
    required this.title,
    required this.svg,
    required this.hintText,
    this.isTrue = false,
  });
  final String title;
  final String svg;
  final String hintText;
  final bool isTrue;

  @override
  State<TextFormFieldItem> createState() => _TextFormFieldItemState();
}

class _TextFormFieldItemState extends State<TextFormFieldItem> {
  bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(
            fontFamily: "Plus Jakarta Sans",
            color: AppColors.appDarkBlue,
            fontWeight: FontWeight.w500,
          ),
        ),
        TextFormField(
          obscureText: isObscure,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(fontFamily: "Plus Jakarta Sans",color: AppColors.appHintColor),
            prefixIcon: SvgPicture.asset(widget.svg, fit: BoxFit.none),
            suffixIcon:
                widget.isTrue
                    ? IconButton(
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      icon: Icon(
                        isObscure ? Icons.visibility_off : Icons.visibility,
                        color: AppColors.appDarkBlue,
                      ),
                    )
                    : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8).r,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.appDarkBlue),
              borderRadius: BorderRadius.circular(10).r,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.appDarkBlue),
              borderRadius: BorderRadius.circular(10).r,
            ),
          ),
        ),
      ],
    );
  }
}
