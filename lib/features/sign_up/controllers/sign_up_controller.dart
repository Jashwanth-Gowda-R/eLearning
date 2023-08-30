// ignore_for_file: non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vrook_course/common/global_loader/global_loader.dart';
import 'package:vrook_course/common/widgets/toast.dart';
import 'package:vrook_course/features/sign_up/provider/register_notifier.dart';
import 'package:vrook_course/features/sign_up/repo/sign_up_repo.dart';


class RegisterController {
  final WidgetRef ref;
  RegisterController({
    required this.ref,
  });

  handleEmailRegister() async {
    final state = ref.read(registerNotifierProvider);
    String UserName = state.username;
    String emailAddress = state.email;
    String password = state.password;
    String repassword = state.repassword;

    debugPrint(
        'handle - name - $UserName,email - $emailAddress,passs - $password,$repassword');

    if (UserName.isEmpty) {
      toastInfo(msg: "UserName not empty!");
      return;
    }
    if (emailAddress.isEmpty) {
      toastInfo(msg: "Email not empty!");
      return;
    }
    if (password.isEmpty) {
      toastInfo(msg: "Password not empty!");
      return;
    }
    if (password != repassword) {
      toastInfo(msg: "The two passwords do not match!");
      return;
    }
    FocusManager.instance.primaryFocus?.unfocus();

    var context = Navigator.of(ref.context);

    try {
      // final credential =
      //     await FirebaseAuth.instance.createUserWithEmailAndPassword(
      //   email: emailAddress,
      //   password: password,
      // );

      final credential = await SignUpRep.firebaseSignUp(
        emailAddress,
        password,
      );
      debugPrint("$credential");

      if (credential.user != null) {
        ref.read(appLoaderProvider.notifier).setLoaderValue(true);
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(UserName);
        // String photoURL = "${SERVER_API_URL}uploads/default.png";
        // await credential.user?.updatePhotoURL(photoURL);
        toastInfo(
            msg:
                "An email has been sent to your registered email. To activate your account, please open the link from the email.");
        context.pop();
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
