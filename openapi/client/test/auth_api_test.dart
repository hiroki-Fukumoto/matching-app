import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for AuthApi
void main() {
  final instance = Openapi().getAuthApi();

  group(AuthApi, () {
    // ログイン
    //
    // ログイン処理を行う。JWTを新たに発行する
    //
    //Future<LoginUserResponse> apiV1LoginPost(LoginRequest loginRequest) async
    test('test apiV1LoginPost', () async {
      // TODO
    });

  });
}
