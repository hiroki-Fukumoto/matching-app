import 'package:flutter_riverpod/flutter_riverpod.dart';

final userModelProvider = Provider((ref) => UserModel());

class UserModel {
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
}
