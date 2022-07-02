// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receive_message_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReceiveMessageResponse extends ReceiveMessageResponse {
  @override
  final String message;
  @override
  final String receiveAt;
  @override
  final UserResponse sender;

  factory _$ReceiveMessageResponse(
          [void Function(ReceiveMessageResponseBuilder)? updates]) =>
      (new ReceiveMessageResponseBuilder()..update(updates))._build();

  _$ReceiveMessageResponse._(
      {required this.message, required this.receiveAt, required this.sender})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        message, r'ReceiveMessageResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(
        receiveAt, r'ReceiveMessageResponse', 'receiveAt');
    BuiltValueNullFieldError.checkNotNull(
        sender, r'ReceiveMessageResponse', 'sender');
  }

  @override
  ReceiveMessageResponse rebuild(
          void Function(ReceiveMessageResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReceiveMessageResponseBuilder toBuilder() =>
      new ReceiveMessageResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReceiveMessageResponse &&
        message == other.message &&
        receiveAt == other.receiveAt &&
        sender == other.sender;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, message.hashCode), receiveAt.hashCode), sender.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReceiveMessageResponse')
          ..add('message', message)
          ..add('receiveAt', receiveAt)
          ..add('sender', sender))
        .toString();
  }
}

class ReceiveMessageResponseBuilder
    implements Builder<ReceiveMessageResponse, ReceiveMessageResponseBuilder> {
  _$ReceiveMessageResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _receiveAt;
  String? get receiveAt => _$this._receiveAt;
  set receiveAt(String? receiveAt) => _$this._receiveAt = receiveAt;

  UserResponseBuilder? _sender;
  UserResponseBuilder get sender =>
      _$this._sender ??= new UserResponseBuilder();
  set sender(UserResponseBuilder? sender) => _$this._sender = sender;

  ReceiveMessageResponseBuilder() {
    ReceiveMessageResponse._defaults(this);
  }

  ReceiveMessageResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _receiveAt = $v.receiveAt;
      _sender = $v.sender.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReceiveMessageResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReceiveMessageResponse;
  }

  @override
  void update(void Function(ReceiveMessageResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReceiveMessageResponse build() => _build();

  _$ReceiveMessageResponse _build() {
    _$ReceiveMessageResponse _$result;
    try {
      _$result = _$v ??
          new _$ReceiveMessageResponse._(
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'ReceiveMessageResponse', 'message'),
              receiveAt: BuiltValueNullFieldError.checkNotNull(
                  receiveAt, r'ReceiveMessageResponse', 'receiveAt'),
              sender: sender.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sender';
        sender.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReceiveMessageResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
