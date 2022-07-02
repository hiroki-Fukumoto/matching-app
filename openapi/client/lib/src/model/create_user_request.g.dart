// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateUserRequest extends CreateUserRequest {
  @override
  final String birthday;
  @override
  final String email;
  @override
  final String name;
  @override
  final String password;
  @override
  final int prefecture;
  @override
  final String sex;

  factory _$CreateUserRequest(
          [void Function(CreateUserRequestBuilder)? updates]) =>
      (new CreateUserRequestBuilder()..update(updates))._build();

  _$CreateUserRequest._(
      {required this.birthday,
      required this.email,
      required this.name,
      required this.password,
      required this.prefecture,
      required this.sex})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        birthday, r'CreateUserRequest', 'birthday');
    BuiltValueNullFieldError.checkNotNull(email, r'CreateUserRequest', 'email');
    BuiltValueNullFieldError.checkNotNull(name, r'CreateUserRequest', 'name');
    BuiltValueNullFieldError.checkNotNull(
        password, r'CreateUserRequest', 'password');
    BuiltValueNullFieldError.checkNotNull(
        prefecture, r'CreateUserRequest', 'prefecture');
    BuiltValueNullFieldError.checkNotNull(sex, r'CreateUserRequest', 'sex');
  }

  @override
  CreateUserRequest rebuild(void Function(CreateUserRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateUserRequestBuilder toBuilder() =>
      new CreateUserRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateUserRequest &&
        birthday == other.birthday &&
        email == other.email &&
        name == other.name &&
        password == other.password &&
        prefecture == other.prefecture &&
        sex == other.sex;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, birthday.hashCode), email.hashCode),
                    name.hashCode),
                password.hashCode),
            prefecture.hashCode),
        sex.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateUserRequest')
          ..add('birthday', birthday)
          ..add('email', email)
          ..add('name', name)
          ..add('password', password)
          ..add('prefecture', prefecture)
          ..add('sex', sex))
        .toString();
  }
}

class CreateUserRequestBuilder
    implements Builder<CreateUserRequest, CreateUserRequestBuilder> {
  _$CreateUserRequest? _$v;

  String? _birthday;
  String? get birthday => _$this._birthday;
  set birthday(String? birthday) => _$this._birthday = birthday;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  int? _prefecture;
  int? get prefecture => _$this._prefecture;
  set prefecture(int? prefecture) => _$this._prefecture = prefecture;

  String? _sex;
  String? get sex => _$this._sex;
  set sex(String? sex) => _$this._sex = sex;

  CreateUserRequestBuilder() {
    CreateUserRequest._defaults(this);
  }

  CreateUserRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _birthday = $v.birthday;
      _email = $v.email;
      _name = $v.name;
      _password = $v.password;
      _prefecture = $v.prefecture;
      _sex = $v.sex;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateUserRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateUserRequest;
  }

  @override
  void update(void Function(CreateUserRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateUserRequest build() => _build();

  _$CreateUserRequest _build() {
    final _$result = _$v ??
        new _$CreateUserRequest._(
            birthday: BuiltValueNullFieldError.checkNotNull(
                birthday, r'CreateUserRequest', 'birthday'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'CreateUserRequest', 'email'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CreateUserRequest', 'name'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'CreateUserRequest', 'password'),
            prefecture: BuiltValueNullFieldError.checkNotNull(
                prefecture, r'CreateUserRequest', 'prefecture'),
            sex: BuiltValueNullFieldError.checkNotNull(
                sex, r'CreateUserRequest', 'sex'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
