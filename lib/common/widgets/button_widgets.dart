import 'package:flutter/material.dart';
import 'package:vrook_course/common/values/values.dart';

Widget appButton({
  required Color color,
  required Function() onTap,
  required String title,
  required Color textcolor,
  double width = 325,
  double height = 50,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: width,
      height: height,
      decoration: appBoxShadow(color: color).copyWith(
        border: Border.all(
          color: AppColors.primaryFourthElementText,
        ),
      ),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textcolor,
            fontWeight: FontWeight.normal,
            fontSize: 16,
          ),
        ),
      ),
    ),
  );
}
