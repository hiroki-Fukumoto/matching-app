import 'package:freezed_annotation/freezed_annotation.dart';

import '../../view_model/auth_vm.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  @JsonSerializable(explicitToJson: true)
  const factory UserState({
    required LoginUserModel loginUser,
  }) = _UserState;
}
