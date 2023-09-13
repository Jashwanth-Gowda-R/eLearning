// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:vrook_course/common/utils/image_res.dart';
import 'package:vrook_course/common/values/values.dart';
import 'package:vrook_course/common/widgets/image_widgets.dart';
import 'package:vrook_course/common/widgets/text_widgets.dart';
import 'package:vrook_course/features/home/controllers/home_controller.dart';
import 'package:vrook_course/global.dart';

// Widget helloText() {
//   return Container(
//     child: text24Normal(
//       text: 'Hello,',
//       color: AppColors.primaryThirdElementText,
//       fontWeight: FontWeight.bold,
//     ),
//   );
// }

class HelloText extends StatelessWidget {
  const HelloText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text24Normal(
      text: 'Hello,',
      color: AppColors.primaryThirdElementText,
      fontWeight: FontWeight.bold,
    );
  }
}

class UserName extends StatelessWidget {
  const UserName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text24Normal(
      text: Global.storageService.getUserProfile().name!,
      fontWeight: FontWeight.bold,
    );
  }
}

// Widget userName() {
//   return Container(
//     child: text24Normal(
//       text: Global.storageService.getUserProfile().name!,
//       fontWeight: FontWeight.bold,
//     ),
//   );
// }

class BannerSlider extends StatelessWidget {
  final WidgetRef ref;
  final PageController pageController;
  const BannerSlider({
    Key? key,
    required this.ref,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 325.w,
          height: 160.h,
          margin: EdgeInsets.only(top: 20.h),
          child: PageView(
            scrollDirection: Axis.horizontal,
            reverse: false,
            onPageChanged: (index) {
              ref
                  .read(homeScreenBannerIndexProvider.notifier)
                  .onPageChanged(index);
            },
            controller: pageController,
            pageSnapping: true,
            physics: const ClampingScrollPhysics(),
            children: [
              bannerContainer(imgPath: ImageRes.banner1),
              bannerContainer(imgPath: ImageRes.banner2),
              bannerContainer(imgPath: ImageRes.banner3),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 8.h),
          child: DotsIndicator(
            mainAxisAlignment: MainAxisAlignment.center,
            reversed: false,
            dotsCount: 3,
            position: ref.watch(homeScreenBannerIndexProvider),
            decorator: DotsDecorator(
              color: AppColors.primaryThirdElementText,
              activeColor: AppColors.primaryElement,
              size: const Size.square(5.0),
              activeSize: const Size(17.0, 5.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
        ),
      ],
    );
  }
}
// Widget bannerSlider({
//   required WidgetRef ref,
//   required PageController pageController,
// }) {
//   return Column(
//     children: [
//       Container(
//         width: 325.w,
//         height: 160.h,
//         margin: EdgeInsets.only(top: 20.h),
//         child: PageView(
//           scrollDirection: Axis.horizontal,
//           reverse: false,
//           onPageChanged: (index) {
//             ref
//                 .read(homeScreenBannerIndexProvider.notifier)
//                 .onPageChanged(index);
//           },
//           controller: pageController,
//           pageSnapping: true,
//           physics: const ClampingScrollPhysics(),
//           children: [
//             bannerContainer(imgPath: ImageRes.banner1),
//             bannerContainer(imgPath: ImageRes.banner2),
//             bannerContainer(imgPath: ImageRes.banner3),
//           ],
//         ),
//       ),
//       Container(
//         padding: EdgeInsets.only(top: 8.h),
//         child: DotsIndicator(
//           mainAxisAlignment: MainAxisAlignment.center,
//           reversed: false,
//           dotsCount: 3,
//           position: ref.watch(homeScreenBannerIndexProvider),
//           decorator: DotsDecorator(
//             color: AppColors.primaryThirdElementText,
//             activeColor: AppColors.primaryElement,
//             size: const Size.square(5.0),
//             activeSize: const Size(17.0, 5.0),
//             activeShape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(5.0)),
//           ),
//         ),
//       ),
//     ],
//   );
// }

Widget bannerContainer({
  required String imgPath,
}) {
  return Container(
    width: 325.w,
    height: 140.h,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imgPath),
        fit: BoxFit.fill,
      ),
      borderRadius: BorderRadius.all(Radius.circular(20.h)),
    ),
  );
}

class HomeMenuBar extends StatelessWidget {
  const HomeMenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 15.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text16Normal(
                text: 'Choice your course',
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              GestureDetector(
                onTap: () {},
                child: const Text10Normal(
                  text: 'See All',
                ),
              ),
            ],
          ),
        ),
        // course item btn
        Container(
          margin: EdgeInsets.only(top: 20.h),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: 15.w, right: 15.w, top: 5.w, bottom: 5.w),
                decoration: appBoxShadow(
                  color: AppColors.primaryElement,
                  radius: 7.w,
                ),
                child: const Text11Normal(
                  text: 'All',
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 30.w,
                ),
                child: const Text11Normal(
                  text: 'Popular',
                  color: AppColors.primaryThirdElementText,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 30.w,
                ),
                child: const Text11Normal(
                  text: 'Newest',
                  color: AppColors.primaryThirdElementText,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CourseGrid extends StatelessWidget {
  const CourseGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return appImage();
        },
      ),
    );
  }
}
