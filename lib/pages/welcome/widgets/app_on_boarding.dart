import 'package:flutter/material.dart';
import 'package:vrook_course/common/values/values.dart';
import 'package:vrook_course/common/widgets/text_widgets.dart';

class AppOnBoardingPage extends StatelessWidget {
  const AppOnBoardingPage({
    Key? key,
    required this.imgName,
    required this.text1,
    required this.text2,
    required this.index,
    required this.pageController,
  }) : super(key: key);

  final String imgName;
  final String text1;
  final String text2;
  final int index;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imgName,
          fit: BoxFit.fitWidth,
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 15,
          ),
          child: text24Normal(
            text: text1,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 15,
          ),
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: text16Normal(
            text: text2,
          ),
        ),
        index < 3
            ? _nextButton('Next', index, pageController)
            : _nextButton('Get Started', index, pageController),
      ],
    );
  }

  Widget _nextButton(
    String title,
    int index,
    PageController pageController,
  ) {
    return GestureDetector(
      onTap: () {
        if (index < 3) {
          pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.bounceIn,
          );
        }
        // else {
        //   Global.storageService.setBool(STORAGE_DEVICE_FIRST_OPEN_KEY, true);
        //   Navigator.of(context).pushNamedAndRemoveUntil(
        //       AppRoutes.Sign_in, (Route<dynamic> route) => false);
        // }
      },
      child: Container(
        width: 325,
        height: 50,
        margin: const EdgeInsets.only(top: 100, left: 25, right: 25),
        decoration: appBoxShadow(),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.primaryBackground,
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
