// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_error_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiErrorState {
  int get status => throw _privateConstructorUsedError;
  String get errorType => throw _privateConstructorUsedError;
  List<String> get messages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiErrorStateCopyWith<ApiErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiErrorStateCopyWith<$Res> {
  factory $ApiErrorStateCopyWith(
          ApiErrorState value, $Res Function(ApiErrorState) then) =
      _$ApiErrorStateCopyWithImpl<$Res>;
  $Res call({int status, String errorType, List<String> messages});
}

/// @nodoc
class _$ApiErrorStateCopyWithImpl<$Res>
    implements $ApiErrorStateCopyWith<$Res> {
  _$ApiErrorStateCopyWithImpl(this._value, this._then);

  final ApiErrorState _value;
  // ignore: unused_field
  final $Res Function(ApiErrorState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? errorType = freezed,
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      errorType: errorType == freezed
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as String,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_ApiErrorStateCopyWith<$Res>
    implements $ApiErrorStateCopyWith<$Res> {
  factory _$$_ApiErrorStateCopyWith(
          _$_ApiErrorState value, $Res Function(_$_ApiErrorState) then) =
      __$$_ApiErrorStateCopyWithImpl<$Res>;
  @override
  $Res call({int status, String errorType, List<String> messages});
}

/// @nodoc
class __$$_ApiErrorStateCopyWithImpl<$Res>
    extends _$ApiErrorStateCopyWithImpl<$Res>
    implements _$$_ApiErrorStateCopyWith<$Res> {
  __$$_ApiErrorStateCopyWithImpl(
      _$_ApiErrorState _value, $Res Function(_$_ApiErrorState) _then)
      : super(_value, (v) => _then(v as _$_ApiErrorState));

  @override
  _$_ApiErrorState get _value => super._value as _$_ApiErrorState;

  @override
  $Res call({
    Object? status = freezed,
    Object? errorType = freezed,
    Object? messages = freezed,
  }) {
    return _then(_$_ApiErrorState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      errorType: errorType == freezed
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as String,
      messages: messages == freezed
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_ApiErrorState implements _ApiErrorState {
  const _$_ApiErrorState(
      {required this.status,
      required this.errorType,
      required final List<String> messages})
      : _messages = messages;

  @override
  final int status;
  @override
  final String errorType;
  final List<String> _messages;
  @override
  List<String> get messages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ApiErrorState(status: $status, errorType: $errorType, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiErrorState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.errorType, errorType) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(errorType),
      const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  _$$_ApiErrorStateCopyWith<_$_ApiErrorState> get copyWith =>
      __$$_ApiErrorStateCopyWithImpl<_$_ApiErrorState>(this, _$identity);
}

abstract class _ApiErrorState implements ApiErrorState {
  const factory _ApiErrorState(
      {required final int status,
      required final String errorType,
      required final List<String> messages}) = _$_ApiErrorState;

  @override
  int get status => throw _privateConstructorUsedError;
  @override
  String get errorType => throw _privateConstructorUsedError;
  @override
  List<String> get messages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ApiErrorStateCopyWith<_$_ApiErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
