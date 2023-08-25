import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vrook_course/common/entities/entities.dart';
import 'package:vrook_course/common/global_loader/global_loader.dart';
import 'package:vrook_course/common/widgets/toast.dart';
import 'package:vrook_course/pages/sign_in/notifier/login_notifier.dart';

class LoginController {
  final WidgetRef ref;
  LoginController({
    required this.ref,
  });

  handleEmailLogin() async {
    final state = ref.read(signInNotifierProvider);
    String emailAddress = state.email;
    String password = state.password;

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

    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      debugPrint("$credential");

      if (!credential.user!.emailVerified) {
        toastInfo(msg: "You must verify your email first.");
      }

      if (credential.user == null) {
        toastInfo(msg: "User not found!!!");
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
        // asyncPostAllData(loginPageListRequestEntity);
      } else {
        toastInfo(msg: 'login error');
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        debugPrint('The password provided is too weak.');
        toastInfo(msg: "The password provided is too weak.");
      } else if (e.code == 'email-already-in-use') {
        debugPrint('The account already exists for that email.');
        toastInfo(msg: "The account already exists for that email.");
      }
    } catch (e) {
      debugPrint(e.toString());
      toastInfo(msg: e.toString());
    }
    ref.read(appLoaderProvider.notifier).setLoaderValue(false);
  }
}
