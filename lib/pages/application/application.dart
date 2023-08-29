import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vrook_course/common/values/values.dart';
import 'package:vrook_course/common/widgets/app_bar.dart';
import 'package:vrook_course/pages/application/notifier/application_nav_notifier.dart';
import 'package:vrook_course/pages/application/widgets/widgets.dart';

class Application extends ConsumerStatefulWidget {
  const Application({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ApplicationState();
}

class _ApplicationState extends ConsumerState<Application> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    var index = ref.watch(applicationNavIndexProvider);
    return Scaffold(
      appBar: buildAppBar(title: "Home Page"),
      body: appScreens(index),
      bottomNavigationBar: Container(
        width: 375.w,
        height: 58.h,
        decoration: appBoxShadowWithRadius(),
        child: BottomNavigationBar(
          currentIndex: index,
          items: bottomTabs,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            ref.read(applicationNavIndexProvider.notifier).changeIndex(value);
            // pageController.jumpToPage(value);
          },
          showSelectedLabels: true,
          showUnselectedLabels: false,
          unselectedItemColor: AppColors.primaryFourElementText,
          selectedItemColor: AppColors.primaryElement,
        ),
      ),
    );
  }
}
