// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:vrook_course/common/values/values.dart';

// Widget text24Normal({
//   required String text,
//   Color color = AppColors.primaryText,
//   FontWeight fontWeight = FontWeight.normal,
// }) {
//   return Text(
//     text,
//     textAlign: TextAlign.center,
//     style: TextStyle(
//       color: color,
//       fontSize: 24,
//       fontWeight: fontWeight,
//     ),
//   );
// }

class Text24Normal extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  const Text24Normal({
    Key? key,
    required this.text,
    this.color = AppColors.primaryText,
    this.fontWeight = FontWeight.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: 24.sp,
        fontWeight: fontWeight,
      ),
    );
  }
}

class Text16Normal extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  const Text16Normal({
    Key? key,
    required this.text,
    this.color = AppColors.primarySecondaryElementText,
    this.fontWeight = FontWeight.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: 16.sp,
        fontWeight: fontWeight,
      ),
    );
  }
}

// Widget text16Normal({
//   required String text,
//   Color color = AppColors.primarySecondaryElementText,
// }) {
//   return Text(
//     text,
//     textAlign: TextAlign.center,
//     style: TextStyle(
//       color: color,
//       fontSize: 16,
//       fontWeight: FontWeight.normal,
//     ),
//   );
// }

class Text14Normal extends StatelessWidget {
  final String text;
  final Color color;
  const Text14Normal({
    Key? key,
    required this.text,
    this.color = AppColors.primaryThirdElementText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: 14.sp,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
// Widget text14Normal({
//   required String text,
//   Color color = AppColors.primaryThirdElementText,
// }) {
//   return Text(
//     text,
//     textAlign: TextAlign.center,
//     style: TextStyle(
//       color: color,
//       fontSize: 14,
//       fontWeight: FontWeight.normal,
//     ),
//   );
// }

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
        fontSize: 14.sp,
        fontWeight: FontWeight.normal,
        decoration: TextDecoration.underline,
        decorationColor: AppColors.primaryText,
      ),
    ),
  );
}

class Text10Normal extends StatelessWidget {
  final String text;
  final Color color;
  const Text10Normal({
    Key? key,
    required this.text,
    this.color = AppColors.primaryThirdElementText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: 10.sp,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}

class Text11Normal extends StatelessWidget {
  final String text;
  final Color color;
  const Text11Normal({
    Key? key,
    required this.text,
    this.color = AppColors.primaryThirdElementText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: 11.sp,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
