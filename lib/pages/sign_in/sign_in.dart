import 'package:flutter/material.dart';
import 'package:vrook_course/common/values/values.dart';
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
        child: Column(
          children: [
            thirdPartyLogin(),
            Center(
              child: text14Normal(text: 'Or use your email account login'),
            )
          ],
        ),
      ),
    );
  }
}
