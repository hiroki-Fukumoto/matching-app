// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthenticationResponse extends AuthenticationResponse {
  @override
  final String apiToken;

  factory _$AuthenticationResponse(
          [void Function(AuthenticationResponseBuilder)? updates]) =>
      (new AuthenticationResponseBuilder()..update(updates))._build();

  _$AuthenticationResponse._({required this.apiToken}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        apiToken, r'AuthenticationResponse', 'apiToken');
  }

  @override
  AuthenticationResponse rebuild(
          void Function(AuthenticationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthenticationResponseBuilder toBuilder() =>
      new AuthenticationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthenticationResponse && apiToken == other.apiToken;
  }

  @override
  int get hashCode {
    return $jf($jc(0, apiToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthenticationResponse')
          ..add('apiToken', apiToken))
        .toString();
  }
}

class AuthenticationResponseBuilder
    implements Builder<AuthenticationResponse, AuthenticationResponseBuilder> {
  _$AuthenticationResponse? _$v;

  String? _apiToken;
  String? get apiToken => _$this._apiToken;
  set apiToken(String? apiToken) => _$this._apiToken = apiToken;

  AuthenticationResponseBuilder() {
    AuthenticationResponse._defaults(this);
  }

  AuthenticationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apiToken = $v.apiToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthenticationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthenticationResponse;
  }

  @override
  void update(void Function(AuthenticationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthenticationResponse build() => _build();

  _$AuthenticationResponse _build() {
    final _$result = _$v ??
        new _$AuthenticationResponse._(
            apiToken: BuiltValueNullFieldError.checkNotNull(
                apiToken, r'AuthenticationResponse', 'apiToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
