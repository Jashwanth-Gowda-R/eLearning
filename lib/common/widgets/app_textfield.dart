import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vrook_course/common/values/values.dart';
import 'package:vrook_course/common/widgets/text_widgets.dart';

Widget appTextField({
  String title = '',
  required String imgPath,
  required hintText,
  Function(String)? onChanged,
  required bool obsText,
  TextEditingController? controller,
}) {
  return Container(
    padding: const EdgeInsets.only(left: 25, right: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text14Normal(text: title),
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
                  controller: controller,
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
                  onChanged: (val) => onChanged!(val),
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

Widget appTextFieldOnly({
  required hintText,
  Function(String)? onChanged,
  required bool obsText,
  TextEditingController? controller,
  double width = 280,
  double height = 50,
}) {
  return SizedBox(
    width: width.w,
    height: height.h,
    child: TextField(
      controller: controller,
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
      onChanged: (val) => onChanged!(val),
      maxLines: 1,
      autocorrect: false, // 自动纠正
      obscureText: obsText, // 隐藏输入内容, 密码框
    ),
  );
}
