import 'package:flutter/material.dart';
import 'package:vrook_course/common/values/values.dart';
import 'package:vrook_course/common/widgets/text_widgets.dart';

AppBar buildAppBar({
  required String title,
}) {
  return AppBar(
    title: text16Normal(text: title, color: AppColors.primaryText),
    centerTitle: true,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1),
      child: Divider(
        color: Colors.grey.withOpacity(0.3),
      ),
    ),
    elevation: 0,
  );
}
