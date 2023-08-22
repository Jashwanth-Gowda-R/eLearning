import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vrook_course/pages/sign_up/notifiers/register_state.dart';

part 'register_notifier.g.dart';

@riverpod
class RegisterNotifier extends _$RegisterNotifier {
  @override
  RegisterState build() {
    return const RegisterState();
  }
}
