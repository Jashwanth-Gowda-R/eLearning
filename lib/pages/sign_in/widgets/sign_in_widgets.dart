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

Widget appTextField(
    {String title = '',
    required String imgPath,
    required hintText,
    Function(String)? onChanged,
    required bool obsText}) {
  return Container(
    padding: const EdgeInsets.only(left: 25, right: 25),
    // margin: const EdgeInsets.only(bottom: 0, top: 66),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14Normal(text: title),
        const SizedBox(
          height: 5,
        ),
        Container(
          width: 325,
          height: 50,
          decoration: appBoxDecorationTextField(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 17),
                padding: const EdgeInsets.only(left: 0, top: 0),
                width: 16,
                height: 16,
                child: Image.asset(imgPath),
              ),
              SizedBox(
                width: 280,
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: hintText,
                    contentPadding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    hintStyle: const TextStyle(
                      color: AppColors.primarySecondaryElementText,
                    ),
                  ),
                  style: const TextStyle(
                    color: AppColors.primaryText,
                    fontFamily: "Avenir",
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                  ),
                  onChanged: onChanged,
                  maxLines: 1,
                  autocorrect: false, // 自动纠正
                  obscureText: obsText, // 隐藏输入内容, 密码框
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
