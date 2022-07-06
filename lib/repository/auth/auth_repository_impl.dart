import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matching_app/repository/result.dart';
import 'package:openapi/openapi.dart';

import '../../domain/openapi_factory.dart';
import 'auth_repository.dart';

final authRepositoryProvider =
    Provider<AuthRepository>((ref) => AuthRepositoryImpl(ref.read));

class AuthRepositoryImpl implements AuthRepository {
  final Openapi _openApi = OpenApiFactory().build();

  AuthRepositoryImpl(this._reader);
  final Reader _reader;

  @override
  Future<Result<LoginUserResponse>> login(LoginRequest req) async {
    return Result.guardFuture(() async {
      final repository = _openApi.getAuthApi();
      try {
        final res = await repository.apiV1LoginPost(loginRequest: req);
        return res.data!;
      } catch (e) {
        throw e;
      }
    });
  }
}
