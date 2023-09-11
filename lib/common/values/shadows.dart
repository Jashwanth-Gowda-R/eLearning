import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vrook_course/common/values/values.dart';

class Shadows {
  static const BoxShadow primaryShadow = BoxShadow(
    color: Color.fromARGB(38, 27, 27, 29),
    offset: Offset(0, 5),
    blurRadius: 10,
  );
}

BoxDecoration appBoxShadow({
  Color color = AppColors.primaryElement,
  double radius = 15.0,
  sR = 1.0,
  bR = 2.0,
  BoxBorder? boxBorder,
}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.all(Radius.circular(radius)),
    border: boxBorder,
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.1),
        spreadRadius: sR,
        blurRadius: bR,
        offset: const Offset(0, 1), // changes position of shadow
      ),
    ],
  );
}

BoxDecoration appBoxDecorationTextField({
  Color color = AppColors.primaryBackground,
  double radius = 15.0,
  Color borderColor = AppColors.primaryFourthElementText,
}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.all(Radius.circular(radius)),
    border: Border.all(color: borderColor),
  );
}

BoxDecoration appBoxShadowWithRadius({
  Color color = AppColors.primaryElement,
  double radius = 15.0,
  sR = 1.0,
  bR = 2.0,
}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20.h),
      topRight: Radius.circular(20.h),
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.1),
        spreadRadius: sR,
        blurRadius: bR,
        offset: const Offset(0, 1), // changes position of shadow
      ),
    ],
  );
}
