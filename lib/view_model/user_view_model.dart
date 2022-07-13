import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';

import '../repository/user_repository.dart';
import '../util/api_error_handler.dart';

final userViewModelProvider = ChangeNotifierProvider(
    (ref) => UserViewModel(repository: ref.read(userRepositoryProvider)));

class Me {
  String id = '';
  String name = '';
  String? avatar;
  String birthday = '';
  String email = '';
  int like = 0;
  String? message;
  String sex = '';
  int prefectureCode = 1;
  String prefectureName = '';
  String apiToken = '';

  Me(this.id, this.name, this.avatar, this.birthday, this.email, this.like,
      this.message, this.sex, this.prefectureCode, this.prefectureName);
}

class UserViewModel extends ChangeNotifier {
  String _loginEmail = '';
  String _loginPassword = '';

  bool _isVisiblePassword = false;

  String _id = '';
  String _name = '';
  String? _avatar;
  String _birthday = '';
  String _email = '';
  int _like = 0;
  String? _message;
  String _sex = '';
  int _prefectureCode = 1;
  String _prefectureName = '';
  String _apiToken = '';

  UserRepository? repository;
  UserViewModel({this.repository});

  setLoginEmail(String val) {
    _loginEmail = val;
  }

  setLoginPassword(String val) {
    _loginPassword = val;
  }

  setIsVisiblePassword(bool val) {
    _isVisiblePassword = val;
    notifyListeners();
  }

  bool getIsVisiblePassword() {
    return _isVisiblePassword;
  }

  Me getMe() {
    return Me(_id, _name, _avatar, _birthday, _email, _like, _message, _sex,
        _prefectureCode, _prefectureName);
  }

  Future<Me> login() async {
    final LoginRequest req = LoginRequest(
        (b) => {b.email = _loginEmail, b.password = _loginPassword});

    await repository?.login(req).then(
      (model) {
        _id = model.id;
        _name = model.name;
        _avatar = model.avatar;
        _birthday = model.birthday;
        _email = model.email;
        _like = model.like;
        _message = model.message;
        _sex = model.sex;
        _prefectureCode = model.prefectureCode;
        _prefectureName = model.prefectureName;
        _apiToken = model.apiToken;

        notifyListeners();
      },
      onError: (e) {
        var err = DioExceptions.fromDioError(e).getError();
        throw err.messages;
      },
    );
    return getMe();
  }
}
