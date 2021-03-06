import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matching_app/domain/openapi_factory.dart';
import 'package:openapi/openapi.dart';

import '../model/user_model.dart';

final userRepositoryProvider =
    Provider((ref) => UserRepositoryImpl(model: ref.read(userModelProvider)));

abstract class UserRepository {
  Future<UserModel> register(req);
  Future<UserModel> login(req);
  Future<List<UserResponse>> fetchUsers(token);
}

class UserRepositoryImpl implements UserRepository {
  final Openapi _openApi = OpenApiFactory().build();

  UserRepositoryImpl({required UserModel model}) : _model = model;

  final UserModel _model;

  @override
  Future<UserModel> register(req) async {
    final repository = _openApi.getUsersApi();

    try {
      final res = await repository.apiV1UsersPost(createUserRequest: req);
      var me = res.data?.me;
      _model.id = me?.id ?? '';
      _model.name = me?.name ?? '';
      _model.email = me?.email ?? '';
      _model.sex = me?.sex ?? '';
      _model.birthday = me?.birthday ?? '';
      _model.avatar = me?.avatar ?? '';
      _model.prefectureName = me?.prefecture.name ?? '';
      _model.prefectureCode = me?.prefecture.code ?? 0;
      _model.apiToken = res.data?.authentication.apiToken ?? '';
      return Future.value(_model);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserModel> login(req) async {
    final repository = _openApi.getAuthApi();

    try {
      final res = await repository.apiV1LoginPost(loginRequest: req);
      var me = res.data?.me;
      _model.id = me?.id ?? '';
      _model.name = me?.name ?? '';
      _model.email = me?.email ?? '';
      _model.sex = me?.sex ?? '';
      _model.birthday = me?.birthday ?? '';
      _model.avatar = me?.avatar ?? '';
      _model.prefectureName = me?.prefecture.name ?? '';
      _model.prefectureCode = me?.prefecture.code ?? 0;
      _model.apiToken = res.data?.authentication.apiToken ?? '';
      return Future.value(_model);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<UserResponse>> fetchUsers(token) async {
    final repository = _openApi.getUsersApi();

    try {
      final res = await repository.apiV1UsersGet(authorization: token);
      return Future.value(res.data?.toList());
    } catch (e) {
      rethrow;
    }
  }
}
