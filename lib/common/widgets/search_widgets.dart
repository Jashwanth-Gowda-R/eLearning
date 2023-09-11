import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vrook_course/common/utils/image_res.dart';
import 'package:vrook_course/common/values/values.dart';
import 'package:vrook_course/common/widgets/app_textfield.dart';

class searchBar extends ConsumerStatefulWidget {
  const searchBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchBarState();
}

class _SearchBarState extends ConsumerState<searchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 280.w,
            height: 40.h,
            decoration: appBoxShadow(
              color: AppColors.primaryBackground,
              boxBorder: Border.all(
                color: AppColors.primaryFourthElementText,
              ),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 17.w),
                  padding: const EdgeInsets.only(left: 0, top: 0),
                  width: 16.w,
                  height: 16.h,
                  child: Image.asset(ImageRes.searchIcon),
                ),
                appTextFieldOnly(
                  hintText: 'Search your course',
                  obsText: false,
                  width: 230.w,
                  height: 40.h,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: appBoxShadow(
                color: AppColors.primaryElement,
                boxBorder: Border.all(
                  color: AppColors.primaryFourthElementText,
                ),
              ),
              // margin: EdgeInsets.only(left: 17.w),
              padding: const EdgeInsets.only(left: 0, top: 0),
              width: 40.w,
              height: 40.h,
              child: Image.asset(ImageRes.searchButton),
            ),
          ),
        ],
      ),
    );
  }
}
