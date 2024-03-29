import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vrook_course/common/models/entities.dart';
import 'package:vrook_course/common/global_loader/global_loader.dart';
import 'package:vrook_course/common/values/values.dart';
import 'package:vrook_course/common/widgets/toast.dart';
import 'package:vrook_course/features/sign_in/provider/login_notifier.dart';
import 'package:vrook_course/features/sign_in/repo/sigin_in_repo.dart';
import 'package:vrook_course/global.dart';

class LoginController {
  final WidgetRef ref;
  LoginController({
    required this.ref,
  });

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  handleEmailLogin() async {
    final state = ref.read(signInNotifierProvider);
    String emailAddress = state.email;
    String password = state.password;

    emailController.text = emailAddress;
    passwordController.text = password;

    debugPrint('name and password : $emailAddress and $password');

    if (emailAddress.isEmpty) {
      toastInfo(msg: "Email not empty!");
      return;
    }
    if (password.isEmpty) {
      toastInfo(msg: "Password not empty!");
      return;
    }
    FocusManager.instance.primaryFocus?.unfocus();

    ref.read(appLoaderProvider.notifier).setLoaderValue(true);

    try {
      // final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      //   email: emailAddress,
      //   password: password,
      // );

      final credential = await SignInRepo.firebaseSignIn(
        emailAddress,
        password,
      );
      debugPrint(
          "credential - $credential,credential.user =  $credential.user");

      if (!credential.user!.emailVerified) {
        toastInfo(msg: "You must verify your email first.");
        ref.read(appLoaderProvider.notifier).setLoaderValue(false);
        return;
      }

      if (credential.user == null) {
        toastInfo(msg: "User not found!!!");
        ref.read(appLoaderProvider.notifier).setLoaderValue(false);
        return;
      }

      var user = credential.user;
      if (user != null) {
        String? displayName = user.displayName;

        String? email = user.email;
        String? id = user.uid;
        String? photoUrl = user.photoURL;

        LoginRequestEntity loginPageListRequestEntity = LoginRequestEntity();
        loginPageListRequestEntity.avatar = photoUrl;
        loginPageListRequestEntity.name = displayName;
        loginPageListRequestEntity.email = email;
        loginPageListRequestEntity.open_id = id;
        loginPageListRequestEntity.type = 1;
        asyncPostAllData(loginPageListRequestEntity);

        debugPrint('user logged in');
      } else {
        toastInfo(msg: 'login error');
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        debugPrint('No user found for that email.');
        toastInfo(msg: "No user found for that email.");
      } else if (e.code == 'wrong-password') {
        debugPrint('Wrong password provided for that user.');
        toastInfo(msg: "Wrong password provided for that user.");
      }
    } catch (e) {
      debugPrint(e.toString());
      toastInfo(msg: e.toString());
    }
    ref.read(appLoaderProvider.notifier).setLoaderValue(false);
  }

  void asyncPostAllData(LoginRequestEntity loginRequestEntity) async {
    try {
      Global.storageService.setString(
          STORAGE_USER_PROFILE_KEY,
          jsonEncode({
            'name': 'Shani',
            'email': 'webdevjash6@gmail.com',
            'age': 25,
          }));
      Global.storageService.setString(STORAGE_USER_TOKEN_KEY, '123456');

      Navigator.of(ref.context).pushNamedAndRemoveUntil(
          '/application', (Route<dynamic> route) => false);
    } catch (e) {
      // Logger.write("$e");
      debugPrint(e.toString());
      toastInfo(msg: e.toString());
    }

    // EasyLoading.show(
    //   indicator: const CircularProgressIndicator(),
    //   maskType: EasyLoadingMaskType.clear,
    //   dismissOnTap: true,
    // );
    // var result = await UserAPI.Login(params: loginRequestEntity);
    // print(result);
    // if (result.code == 0) {
    // try {
    //   Global.storageService
    //       .setString(STORAGE_USER_PROFILE_KEY, jsonEncode(result.data!));
    //   Global.storageService
    //       .setString(STORAGE_USER_TOKEN_KEY, result.data!.access_token!);
    //   EasyLoading.dismiss();
    //   Navigator.of(ref.context).pushNamedAndRemoveUntil(
    //       AppRoutes.Application, (Route<dynamic> route) => false);
    // } catch (e) {
    //   Logger.write("$e");
    // }
    // } else {
    //   EasyLoading.dismiss();
    //   toastInfo(msg: 'internet error');
    // }
  }
}
