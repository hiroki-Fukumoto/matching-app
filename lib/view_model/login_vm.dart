import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matching_app/state/login/login_state.dart';

final loginViewModelProvider =
    StateNotifierProvider.autoDispose<LoginViewModel, AsyncValue<LoginState>>(
  (ref) => LoginViewModel(ref: ref),
);

class LoginViewModel extends StateNotifier<AsyncValue<LoginState>> {
  final AutoDisposeStateNotifierProviderRef _ref;
  LoginViewModel({required AutoDisposeStateNotifierProviderRef ref})
      : _ref = ref,
        super(const AsyncLoading()) {}

  void setEmail(String val) {
    final password = state.value?.password;
    state = AsyncValue.data(
      LoginState(email: val, password: password ?? ''),
    );
  }

  String getEmail() {
    return state.value?.email ?? '';
  }

  void setPassword(String val) {
    final email = state.value?.email;
    state = AsyncValue.data(
      LoginState(email: email ?? '', password: val),
    );
  }

  String getPassword() {
    return state.value?.password ?? '';
  }
}
