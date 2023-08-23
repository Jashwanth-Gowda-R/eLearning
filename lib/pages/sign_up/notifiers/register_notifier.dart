import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vrook_course/pages/sign_up/notifiers/register_state.dart';

part 'register_notifier.g.dart';

@riverpod
class RegisterNotifier extends _$RegisterNotifier {
  @override
  RegisterState build() {
    return const RegisterState();
  }

  void onUserNameChanged(String name) {
    state = state.copyWith(username: name);
  }

  void onEmailChanged(String email) {
    state = state.copyWith(email: email);
  }

  void onPasswordChanged(String password) {
    state = state.copyWith(password: password);
  }

  void onRePasswordChanged(String repassword) {
    state = state.copyWith(repassword: repassword);
  }
  
}
