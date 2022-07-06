import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error_state.freezed.dart';

@freezed
class ApiErrorState with _$ApiErrorState {
  const factory ApiErrorState({
    required int status,
    required String errorType,
    required List<String> messages,
  }) = _ApiErrorState;
}
