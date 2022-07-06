import 'package:matching_app/repository/result.dart';
import 'package:openapi/openapi.dart';

abstract class AuthRepository {
  Future<Result<LoginUserResponse>> login(LoginRequest req);
}
