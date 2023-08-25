import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vrook_course/pages/sign_in/notifier/login_state.dart';

class LoginNotifier extends StateNotifier<SignInState> {
  LoginNotifier() : super(const SignInState());

  void onEmailChanged(String email) {
    state = state.copyWith(email: email);
  }

  void onPasswordChanged(String password) {
    state = state.copyWith(password: password);
  }
}

final signInNotifierProvider =
    StateNotifierProvider<LoginNotifier, SignInState>((ref) {
  return LoginNotifier();
});
