import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matching_app/state/auth/user_state.dart';
import 'package:matching_app/view_model/user_vm.dart';
import 'package:openapi/openapi.dart';

import '../repository/api_error.dart';
import '../repository/auth/auth_repository.dart';
import '../repository/auth/auth_repository_impl.dart';

class AuthModel {
  String apiToken = '';

  void setApiToken(String val) {
    apiToken = val;
  }
}

class LoginUserModel {
  late MeModel? me;
  late AuthModel? authentication;

  void setMe(MeModel? val) {
    me = val;
  }

  void setAuth(AuthModel? val) {
    authentication = val;
  }
}

final authViewModelProvider =
    StateNotifierProvider.autoDispose<AuthVM, AsyncValue<UserState>>(
  (ref) => AuthVM(ref: ref),
);

class AuthVM extends StateNotifier<AsyncValue<UserState>> {
  final AutoDisposeStateNotifierProviderRef _ref;

  AuthVM({required AutoDisposeStateNotifierProviderRef ref})
      : _ref = ref,
        super(const AsyncLoading()) {}

  late final AuthRepository authRepository = _ref.read(authRepositoryProvider);

  Future<void> login(String email, String password) async {
    final LoginRequest req =
        LoginRequest((b) => {b.email = email, b.password = password});
    final result = await authRepository.login(req);
    result.when(
      success: (data) {
        final a = AuthModel();
        a.setApiToken(data.authentication.apiToken);

        final m = MeModel();
        m.setId(data.me.id);
        m.setName(data.me.name);
        m.setAvatar(data.me.avatar ?? '');
        m.setBirthday(data.me.birthday);
        m.setEmail(data.me.email);
        m.setLike(data.me.like);
        m.setMessage(data.me.message ?? '');
        m.setSex(data.me.sex);

        final p = PrefectureModel();
        p.setCode(data.me.prefecture.code);
        p.setName(data.me.prefecture.name);
        m.setPrefecture(p);

        final l = LoginUserModel();
        l.setAuth(a);
        l.setMe(m);

        state = AsyncValue.data(
          UserState(loginUser: l),
        );
      },
      failure: (error) {
        var err = DioExceptions.fromDioError(error).getError();
        state = AsyncValue.error(err);
      },
    );
  }
}
