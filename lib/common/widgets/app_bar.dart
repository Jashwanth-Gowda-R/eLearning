// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:vrook_course/common/utils/image_res.dart';
import 'package:vrook_course/common/values/values.dart';
import 'package:vrook_course/common/widgets/text_widgets.dart';

AppBar buildAppBar({
  required String title,
}) {
  return AppBar(
    title: Text16Normal(text: title, color: AppColors.primaryText),
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

AppBar homeAppBar() {
  return AppBar(
    title: Container(
      margin: EdgeInsets.only(left: 7.w, right: 7.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            ImageRes.menu,
            width: 18.w,
            height: 12.h,
          ),
          GestureDetector(
            onTap: () {},
            child: const AppBarDecorationImage(),
          ),
        ],
      ),
    ),
    elevation: 0,
  );
}

class AppBarDecorationImage extends StatelessWidget {
  final double width;
  final double height;
  final String imgPath;
  const AppBarDecorationImage({
    Key? key,
    this.width = 40,
    this.height = 40,
    this.imgPath = ImageRes.profile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              imgPath,
            ),
          ),
          borderRadius: BorderRadius.circular(20.w)),
      width: width.w,
      height: height.h,
    );
  }
}
