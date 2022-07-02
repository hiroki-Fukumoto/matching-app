// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_user_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginUserResponse extends LoginUserResponse {
  @override
  final AuthenticationResponse authentication;
  @override
  final MeResponse me;

  factory _$LoginUserResponse(
          [void Function(LoginUserResponseBuilder)? updates]) =>
      (new LoginUserResponseBuilder()..update(updates))._build();

  _$LoginUserResponse._({required this.authentication, required this.me})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        authentication, r'LoginUserResponse', 'authentication');
    BuiltValueNullFieldError.checkNotNull(me, r'LoginUserResponse', 'me');
  }

  @override
  LoginUserResponse rebuild(void Function(LoginUserResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginUserResponseBuilder toBuilder() =>
      new LoginUserResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginUserResponse &&
        authentication == other.authentication &&
        me == other.me;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, authentication.hashCode), me.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginUserResponse')
          ..add('authentication', authentication)
          ..add('me', me))
        .toString();
  }
}

class LoginUserResponseBuilder
    implements Builder<LoginUserResponse, LoginUserResponseBuilder> {
  _$LoginUserResponse? _$v;

  AuthenticationResponseBuilder? _authentication;
  AuthenticationResponseBuilder get authentication =>
      _$this._authentication ??= new AuthenticationResponseBuilder();
  set authentication(AuthenticationResponseBuilder? authentication) =>
      _$this._authentication = authentication;

  MeResponseBuilder? _me;
  MeResponseBuilder get me => _$this._me ??= new MeResponseBuilder();
  set me(MeResponseBuilder? me) => _$this._me = me;

  LoginUserResponseBuilder() {
    LoginUserResponse._defaults(this);
  }

  LoginUserResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authentication = $v.authentication.toBuilder();
      _me = $v.me.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginUserResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginUserResponse;
  }

  @override
  void update(void Function(LoginUserResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginUserResponse build() => _build();

  _$LoginUserResponse _build() {
    _$LoginUserResponse _$result;
    try {
      _$result = _$v ??
          new _$LoginUserResponse._(
              authentication: authentication.build(), me: me.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authentication';
        authentication.build();
        _$failedField = 'me';
        me.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LoginUserResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
