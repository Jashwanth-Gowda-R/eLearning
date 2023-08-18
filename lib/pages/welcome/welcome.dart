// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:vrook_course/pages/welcome/widgets/app_on_boarding.dart';

final indexProvider = StateProvider<int>((ref) => 0);

class Welcome extends ConsumerStatefulWidget {
  const Welcome({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WelcomeState();
}

class _WelcomeState extends ConsumerState<Welcome> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final index = ref.watch(indexProvider);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            PageView(
              onPageChanged: (val) {
                ref.read(indexProvider.notifier).state = val;
              },
              controller: pageController,
              children: [
                // showing 3 pages
                AppOnBoardingPage(
                  imgName: 'assets/images/reading.png',
                  text1: "First See Learning",
                  text2:
                      "Forget about a for of paper all knowledge in one learning!",
                  index: 1,
                  pageController: pageController,
                ),
                AppOnBoardingPage(
                  imgName: 'assets/images/man.png',
                  text1: 'Connect With Everyone',
                  text2:
                      'Always keep in touch with your tutor & friend. let’s get connected!',
                  index: 2,
                  pageController: pageController,
                ),
                AppOnBoardingPage(
                  imgName: 'assets/images/boy.png',
                  text1: 'Always Fascinated Learning',
                  text2:
                      'Anywhere, anytime. The time is at your discretion so study whenever you want.',
                  index: 3,
                  pageController: pageController,
                ),
              ],
            ),
            // showing dot indicators
            Positioned(
              bottom: 30,
              child: DotsIndicator(
                position: index,
                dotsCount: 3,
                decorator: DotsDecorator(
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
