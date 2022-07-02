import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UsersApi
void main() {
  final instance = Openapi().getUsersApi();

  group(UsersApi, () {
    // ユーザー情報全件取得
    //
    // 50件ずつ取得。検索条件がない場合は登録日が新しい順に返す（今の所）
    //
    //Future<BuiltList<UserResponse>> apiV1UsersGet(String authorization, { int page, int prefecture, int fromAge, int toAge, int sort }) async
    test('test apiV1UsersGet', () async {
      // TODO
    });

    // ユーザー詳細情報取得
    //
    // 指定したユーザーの詳細情報を取得する
    //
    //Future<UserResponse> apiV1UsersIdGet(String authorization, String id) async
    test('test apiV1UsersIdGet', () async {
      // TODO
    });

    // ログインユーザー情報取得
    //
    // ログイン中のユーザー情報を取得する
    //
    //Future<MeResponse> apiV1UsersInfoMeGet(String authorization) async
    test('test apiV1UsersInfoMeGet', () async {
      // TODO
    });

    // 本日のピックアップユーザー取得
    //
    // ログインユーザーとは異なる性別のユーザーを20件返す
    //
    //Future<BuiltList<UserResponse>> apiV1UsersPickupTodayGet(String authorization) async
    test('test apiV1UsersPickupTodayGet', () async {
      // TODO
    });

    // ユーザー新規作成
    //
    // 新しいユーザーを作成する
    //
    //Future<LoginUserResponse> apiV1UsersPost(CreateUserRequest createUserRequest) async
    test('test apiV1UsersPost', () async {
      // TODO
    });

  });
}
