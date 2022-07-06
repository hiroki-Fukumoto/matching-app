import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matching_app/repository/user_repository.dart';

final userViewModelProvider = ChangeNotifierProvider(
    (ref) => UserViewModel(repository: ref.read(userRepositoryProvider)));

class MeModel {
  String id = '';
  String name = '';
  String? avatar;
  String birthday = '';
  String email = '';
  int like = 0;
  String? message;
  String sex = '';
  late PrefectureModel prefecture;

  void setId(String val) {
    id = val;
  }

  void setName(String val) {
    name = val;
  }

  void setAvatar(String val) {
    avatar = val;
  }

  void setBirthday(String val) {
    birthday = val;
  }

  void setEmail(String val) {
    email = val;
  }

  void setLike(int val) {
    like = val;
  }

  void setMessage(String val) {
    message = val;
  }

  void setSex(String val) {
    sex = val;
  }

  void setPrefecture(PrefectureModel val) {
    prefecture = val;
  }
}

class PrefectureModel {
  int code = 0;
  String name = '';

  void setCode(int val) {
    code = val;
  }

  void setName(String val) {
    name = val;
  }
}

class UserViewModel extends ChangeNotifier {
  UserRepository? repository;

  UserViewModel({this.repository});

  MeModel getMe() {
    final me = MeModel();

    repository?.fetchMe().then((res) {
      me.id = res.id;
      me.name = res.name;
      me.avatar = res.avatar;
      me.birthday = res.birthday;
      me.email = res.email;
      me.like = res.like;
      me.message = res.message;
      me.sex = res.sex;
      me.prefecture.code = res.prefecture.code;
      me.prefecture.name = res.prefecture.name;
    });

    return me;
  }
}
