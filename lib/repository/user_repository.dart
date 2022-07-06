import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matching_app/domain/openapi_factory.dart';
import 'package:openapi/openapi.dart';

final userRepositoryProvider = Provider((ref) => UserRepositoryImpl());

abstract class UserRepository {
  Future<MeResponse> fetchMe();
}

class UserRepositoryImpl implements UserRepository {
  final Openapi _openApi = OpenApiFactory().build();

  @override
  Future<MeResponse> fetchMe() async {
    final repository = _openApi.getUsersApi();
    // TODO: エラーハンドル
    try {
      final res = await repository.apiV1UsersInfoMeGet(authorization: 'aaaaa');
      return res.data!;
    } catch (e) {
      throw e;
    }
  }
}
