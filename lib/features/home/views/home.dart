// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vrook_course/common/widgets/app_bar.dart';
import 'package:vrook_course/common/widgets/search_widgets.dart';
import 'package:vrook_course/features/home/controllers/home_controller.dart';
import 'package:vrook_course/features/home/views/widgets/home_widgets.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  late PageController pageController;

  @override
  void didChangeDependencies() {
    pageController = PageController(
      initialPage: ref.watch(homeScreenBannerIndexProvider),
    );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: homeAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              const HelloText(),
              const UserName(),
              SizedBox(
                height: 20.h,
              ),
              const searchBar(),
              BannerSlider(ref: ref, pageController: pageController),
              const HomeMenuBar(),
              // CustomScrollView(
              //   shrinkWrap: true,
              //   physics: ScrollPhysics(),
              //   slivers: [
              //     SliverPadding(
              //       padding: EdgeInsets.all(20),
              //       sliver: SliverGrid.count(
              //         crossAxisCount: 2,
              //         children: const [],
              //       ),
              //     ),
              //   ],
              // )
              CourseGrid()
            ],
          ),
        ),
      ),
    );
  }
}
