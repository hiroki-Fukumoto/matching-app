// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SendMessageRequest extends SendMessageRequest {
  @override
  final String message;
  @override
  final String receiverId;

  factory _$SendMessageRequest(
          [void Function(SendMessageRequestBuilder)? updates]) =>
      (new SendMessageRequestBuilder()..update(updates))._build();

  _$SendMessageRequest._({required this.message, required this.receiverId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        message, r'SendMessageRequest', 'message');
    BuiltValueNullFieldError.checkNotNull(
        receiverId, r'SendMessageRequest', 'receiverId');
  }

  @override
  SendMessageRequest rebuild(
          void Function(SendMessageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendMessageRequestBuilder toBuilder() =>
      new SendMessageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendMessageRequest &&
        message == other.message &&
        receiverId == other.receiverId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, message.hashCode), receiverId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SendMessageRequest')
          ..add('message', message)
          ..add('receiverId', receiverId))
        .toString();
  }
}

class SendMessageRequestBuilder
    implements Builder<SendMessageRequest, SendMessageRequestBuilder> {
  _$SendMessageRequest? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _receiverId;
  String? get receiverId => _$this._receiverId;
  set receiverId(String? receiverId) => _$this._receiverId = receiverId;

  SendMessageRequestBuilder() {
    SendMessageRequest._defaults(this);
  }

  SendMessageRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _receiverId = $v.receiverId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendMessageRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SendMessageRequest;
  }

  @override
  void update(void Function(SendMessageRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendMessageRequest build() => _build();

  _$SendMessageRequest _build() {
    final _$result = _$v ??
        new _$SendMessageRequest._(
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'SendMessageRequest', 'message'),
            receiverId: BuiltValueNullFieldError.checkNotNull(
                receiverId, r'SendMessageRequest', 'receiverId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
