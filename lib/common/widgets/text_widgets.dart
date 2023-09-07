import 'package:flutter/material.dart';
import 'package:vrook_course/common/values/values.dart';

Widget text24Normal({
  required String text,
  Color color = AppColors.primaryText,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: color,
      fontSize: 24,
      fontWeight: fontWeight,
    ),
  );
}

Widget text16Normal({
  required String text,
  Color color = AppColors.primarySecondaryElementText,
}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget text14Normal({
  required String text,
  Color color = AppColors.primaryThirdElementText,
}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: color,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget textUnderline({
  required String text,
  Color color = AppColors.primaryText,
  Function()? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.normal,
        decoration: TextDecoration.underline,
        decorationColor: AppColors.primaryText,
      ),
    ),
  );
}
