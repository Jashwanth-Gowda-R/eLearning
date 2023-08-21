import 'package:flutter/material.dart';
import 'package:vrook_course/common/values/values.dart';
import 'package:vrook_course/common/widgets/button_widgets.dart';
import 'package:vrook_course/common/widgets/text_widgets.dart';
import 'package:vrook_course/pages/sign_in/widgets/sign_in_widgets.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      appBar: buildAppBar(),
      body: SafeArea( 
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              thirdPartyLogin(),
              Center(
                child: text14Normal(text: 'Or use your email account login'),
              ),
              const SizedBox(
                height: 50,
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
              Container(
                margin: const EdgeInsets.only(left: 25),
                child: textUnderline(text: 'Forgot Password?', onTap: () {}),
              ),
              const SizedBox(
                height: 100,
              ),
              Center(
                child: appButton(
                  color: AppColors.primaryElement,
                  onTap: () {},
                  title: 'Log In',
                  textcolor: AppColors.primaryBackground,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: appButton(
                  color: AppColors.primaryBackground,
                  onTap: () {},
                  title: 'Sign Up',
                  textcolor: AppColors.primaryText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
