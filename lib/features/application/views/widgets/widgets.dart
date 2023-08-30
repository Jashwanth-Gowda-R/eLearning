import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vrook_course/common/utils/image_res.dart';
import 'package:vrook_course/common/values/values.dart';

var bottomTabs = <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: SizedBox(
      width: 15.w,
      height: 15.w,
      child: Image.asset(
        ImageRes.home,
        color: AppColors.primaryFourthElementText,
      ),
    ),
    activeIcon: SizedBox(
      width: 15.w,
      height: 15.w,
      child: Image.asset(
        ImageRes.home,
        color: AppColors.primaryElement,
      ),
    ),
    label: "Home",
    backgroundColor: AppColors.primaryBackground,
  ),
  BottomNavigationBarItem(
    icon: SizedBox(
      width: 15.w,
      height: 15.w,
      child: Image.asset(
        ImageRes.search,
        color: AppColors.primaryFourthElementText,
      ),
    ),
    activeIcon: SizedBox(
      width: 15.w,
      height: 15.w,
      child: Image.asset(
        ImageRes.search,
        color: AppColors.primaryElement,
      ),
    ),
    label: "Search",
    backgroundColor: AppColors.primaryBackground,
  ),
  BottomNavigationBarItem(
    icon: SizedBox(
      width: 15.w,
      height: 15.w,
      child: Image.asset(
        ImageRes.play,
        color: AppColors.primaryFourthElementText,
      ),
    ),
    activeIcon: SizedBox(
      width: 15.w,
      height: 15.w,
      child: Image.asset(
        ImageRes.play,
        color: AppColors.primaryElement,
      ),
    ),
    label: "Play",
    backgroundColor: AppColors.primaryBackground,
  ),
  BottomNavigationBarItem(
    icon: SizedBox(
      width: 15.w,
      height: 15.w,
      child: Image.asset(
        ImageRes.message,
        color: AppColors.primaryFourthElementText,
      ),
    ),
    activeIcon: SizedBox(
      width: 15.w,
      height: 15.w,
      child: Image.asset(
        ImageRes.message,
        color: AppColors.primaryElement,
      ),
    ),
    label: "Message",
    backgroundColor: AppColors.primaryBackground,
  ),
  BottomNavigationBarItem(
    icon: SizedBox(
      width: 15.w,
      height: 15.w,
      child: Image.asset(
        ImageRes.profile,
        color: AppColors.primaryFourthElementText,
      ),
    ),
    activeIcon: SizedBox(
      width: 15.w,
      height: 15.w,
      child: Image.asset(
        ImageRes.profile,
        color: AppColors.primaryElement,
      ),
    ),
    label: "Profile",
    backgroundColor: AppColors.primaryBackground,
  ),
];

// Widget appScreens(PageController pageController) {
//   return PageView(
//     physics: const NeverScrollableScrollPhysics(),
//     controller: pageController,
//     onPageChanged: (value) {},
//     children: const <Widget>[
//       Home(),
//       Search(),
//       Course(),
//       Message(),
//       Profile(),
//     ],
//   );
// }

Widget appScreens(int index) {
  List<Widget> screens = [
    Center(
      child: Image.asset(
        ImageRes.home,
        color: AppColors.primaryElement,
      ),
    ),
    Center(
      child: Image.asset(
        ImageRes.search,
        color: AppColors.primaryElement,
      ),
    ),
    Center(
      child: Image.asset(
        ImageRes.play,
        color: AppColors.primaryElement,
      ),
    ),
    Center(
      child: Image.asset(
        ImageRes.message,
        color: AppColors.primaryElement,
      ),
    ),
    Center(
      child: Image.asset(
        ImageRes.profile,
        color: AppColors.primaryElement,
      ),
    ),
  ];
  return screens[index];
}
