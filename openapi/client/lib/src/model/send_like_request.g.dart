// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_like_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SendLikeRequest extends SendLikeRequest {
  @override
  final String receiverId;

  factory _$SendLikeRequest([void Function(SendLikeRequestBuilder)? updates]) =>
      (new SendLikeRequestBuilder()..update(updates))._build();

  _$SendLikeRequest._({required this.receiverId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        receiverId, r'SendLikeRequest', 'receiverId');
  }

  @override
  SendLikeRequest rebuild(void Function(SendLikeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendLikeRequestBuilder toBuilder() =>
      new SendLikeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendLikeRequest && receiverId == other.receiverId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, receiverId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SendLikeRequest')
          ..add('receiverId', receiverId))
        .toString();
  }
}

class SendLikeRequestBuilder
    implements Builder<SendLikeRequest, SendLikeRequestBuilder> {
  _$SendLikeRequest? _$v;

  String? _receiverId;
  String? get receiverId => _$this._receiverId;
  set receiverId(String? receiverId) => _$this._receiverId = receiverId;

  SendLikeRequestBuilder() {
    SendLikeRequest._defaults(this);
  }

  SendLikeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _receiverId = $v.receiverId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendLikeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SendLikeRequest;
  }

  @override
  void update(void Function(SendLikeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendLikeRequest build() => _build();

  _$SendLikeRequest _build() {
    final _$result = _$v ??
        new _$SendLikeRequest._(
            receiverId: BuiltValueNullFieldError.checkNotNull(
                receiverId, r'SendLikeRequest', 'receiverId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
