// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_like_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SendLikeResponse extends SendLikeResponse {
  @override
  final UserResponse receiver;
  @override
  final String sentAt;

  factory _$SendLikeResponse(
          [void Function(SendLikeResponseBuilder)? updates]) =>
      (new SendLikeResponseBuilder()..update(updates))._build();

  _$SendLikeResponse._({required this.receiver, required this.sentAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        receiver, r'SendLikeResponse', 'receiver');
    BuiltValueNullFieldError.checkNotNull(
        sentAt, r'SendLikeResponse', 'sentAt');
  }

  @override
  SendLikeResponse rebuild(void Function(SendLikeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendLikeResponseBuilder toBuilder() =>
      new SendLikeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendLikeResponse &&
        receiver == other.receiver &&
        sentAt == other.sentAt;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, receiver.hashCode), sentAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SendLikeResponse')
          ..add('receiver', receiver)
          ..add('sentAt', sentAt))
        .toString();
  }
}

class SendLikeResponseBuilder
    implements Builder<SendLikeResponse, SendLikeResponseBuilder> {
  _$SendLikeResponse? _$v;

  UserResponseBuilder? _receiver;
  UserResponseBuilder get receiver =>
      _$this._receiver ??= new UserResponseBuilder();
  set receiver(UserResponseBuilder? receiver) => _$this._receiver = receiver;

  String? _sentAt;
  String? get sentAt => _$this._sentAt;
  set sentAt(String? sentAt) => _$this._sentAt = sentAt;

  SendLikeResponseBuilder() {
    SendLikeResponse._defaults(this);
  }

  SendLikeResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _receiver = $v.receiver.toBuilder();
      _sentAt = $v.sentAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendLikeResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SendLikeResponse;
  }

  @override
  void update(void Function(SendLikeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendLikeResponse build() => _build();

  _$SendLikeResponse _build() {
    _$SendLikeResponse _$result;
    try {
      _$result = _$v ??
          new _$SendLikeResponse._(
              receiver: receiver.build(),
              sentAt: BuiltValueNullFieldError.checkNotNull(
                  sentAt, r'SendLikeResponse', 'sentAt'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'receiver';
        receiver.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SendLikeResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
