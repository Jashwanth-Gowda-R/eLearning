import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vrook_course/common/global_loader/global_loader.dart';
import 'package:vrook_course/common/values/values.dart';
import 'package:vrook_course/common/widgets/app_bar.dart';
import 'package:vrook_course/common/widgets/app_textfield.dart';
import 'package:vrook_course/common/widgets/button_widgets.dart';
import 'package:vrook_course/common/widgets/text_widgets.dart';
import 'package:vrook_course/pages/sign_in/notifier/login_notifier.dart';
import 'package:vrook_course/pages/sign_in/sign_in_controller.dart';
import 'package:vrook_course/pages/sign_in/widgets/sign_in_widgets.dart';

class SignIn extends ConsumerStatefulWidget {
  const SignIn({super.key});

  @override
  ConsumerState<SignIn> createState() => _SignInState();
}

class _SignInState extends ConsumerState<SignIn> {
  late LoginController _controller;

  @override
  void initState() {
    super.initState();
    _controller = LoginController(ref: ref);
  }

  @override
  Widget build(BuildContext context) {
    final loader = ref.watch(appLoaderProvider);
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      appBar: buildAppBar(title: "Login"),
      body: loader
          ? const Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.blue,
                color: AppColors.primaryElement,
              ),
            )
          : SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    thirdPartyLogin(),
                    Center(
                      child:
                          text14Normal(text: 'Or use your email account login'),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    appTextField(
                      controller: _controller.emailController,
                      title: 'Email',
                      hintText: "Enter your email address",
                      imgPath: 'assets/icons/user.png',
                      onChanged: (value) {
                        ref
                            .read(signInNotifierProvider.notifier)
                            .onEmailChanged(value);
                      },
                      obsText: false,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    appTextField(
                      controller: _controller.passwordController,
                      title: 'Password',
                      hintText: "Enter your Password",
                      imgPath: 'assets/icons/lock.png',
                      onChanged: (value) {
                        ref
                            .read(signInNotifierProvider.notifier)
                            .onPasswordChanged(value);
                      },
                      obsText: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 25),
                      child:
                          textUnderline(text: 'Forgot Password?', onTap: () {}),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: appButton(
                        color: AppColors.primaryElement,
                        onTap: () {
                          _controller.handleEmailLogin();
                        },
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
                        onTap: () {
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(builder: (context) {
                          //     return const SignUp();
                          //   }),
                          // );
                          Navigator.pushNamed(context, '/signup');
                        },
                        title: 'Register',
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
