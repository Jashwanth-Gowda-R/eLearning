import 'package:flutter/material.dart';
import 'package:vrook_course/common/values/values.dart';
import 'package:vrook_course/common/widgets/text_widgets.dart';
import 'package:vrook_course/global.dart';

Widget helloText() {
  return Container(
    child: text24Normal(
      text: 'Hello,',
      color: AppColors.primaryThirdElementText,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget userName() {
  return Container(
    child: text24Normal(
      text: Global.storageService.getUserProfile().name!,
      fontWeight: FontWeight.bold,
    ),
  );
}
