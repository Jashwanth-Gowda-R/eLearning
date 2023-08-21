import 'package:flutter/material.dart';
import 'package:vrook_course/common/values/values.dart';
import 'package:vrook_course/common/widgets/text_widgets.dart';

AppBar buildAppBar() {
  return AppBar(
    title: text16Normal(text: "Login", color: AppColors.primaryText),
    centerTitle: true,
    bottom: const PreferredSize(
      preferredSize: Size.fromHeight(1),
      child: Divider(),
    ),
    elevation: 0,
  );
}

Widget thirdPartyLogin() {
  return Container(
    margin: const EdgeInsets.only(left: 80, right: 80, top: 40, bottom: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _loginButton(
          "assets/icons/google.png",
          () {},
        ),
        _loginButton(
          "assets/icons/apple.png",
          () {},
        ),
        _loginButton(
          "assets/icons/facebook.png",
          () {},
        ),
      ],
    ),
  );
}

Widget _loginButton(String imgPath, Function()? onTap) {
  return GestureDetector(
    onTap: onTap,
    child: SizedBox(
      width: 40,
      height: 40,
      child: Image.asset(
        imgPath,
        fit: BoxFit.fill,
      ),
    ),
  );
}
