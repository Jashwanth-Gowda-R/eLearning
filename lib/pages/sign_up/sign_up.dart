import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vrook_course/common/values/values.dart';
import 'package:vrook_course/common/widgets/app_bar.dart';
import 'package:vrook_course/common/widgets/app_textfield.dart';
import 'package:vrook_course/common/widgets/button_widgets.dart';
import 'package:vrook_course/common/widgets/text_widgets.dart';
import 'package:vrook_course/pages/sign_up/notifiers/register_notifier.dart';

class SignUp extends ConsumerWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final registerProvider = ref.watch(registerNotifierProvider);

    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      appBar: buildAppBar(title: "Register"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // thirdPartyLogin(),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: text14Normal(
                  text: 'Enter Your details below and free sign up',
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              appTextField(
                title: 'User name',
                hintText: "Enter your user name",
                imgPath: 'assets/icons/user.png',
                onChanged: (value) {},
                obsText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              appTextField(
                title: 'Email',
                hintText: "Enter your email address",
                imgPath: 'assets/icons/user.png',
                onChanged: (value) {},
                obsText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              appTextField(
                title: 'Password',
                hintText: "Enter your Password",
                imgPath: 'assets/icons/lock.png',
                onChanged: (value) {},
                obsText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              appTextField(
                title: 'Confirm Password',
                hintText: "Enter your Confirm Password",
                imgPath: 'assets/icons/lock.png',
                onChanged: (value) {},
                obsText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 25),
                child: const Text(
                  'By creating an account you have to agree with our term and conditions',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.primaryThreeElementText,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: appButton(
                  color: AppColors.primaryElement,
                  onTap: () {},
                  title: 'Sign Up',
                  textcolor: AppColors.primaryBackground,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}