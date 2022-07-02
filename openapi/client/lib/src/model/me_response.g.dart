// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'me_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MeResponse extends MeResponse {
  @override
  final String? avatar;
  @override
  final String birthday;
  @override
  final String email;
  @override
  final String id;
  @override
  final int like;
  @override
  final String? message;
  @override
  final String name;
  @override
  final PrefectureResponse prefecture;
  @override
  final String sex;

  factory _$MeResponse([void Function(MeResponseBuilder)? updates]) =>
      (new MeResponseBuilder()..update(updates))._build();

  _$MeResponse._(
      {this.avatar,
      required this.birthday,
      required this.email,
      required this.id,
      required this.like,
      this.message,
      required this.name,
      required this.prefecture,
      required this.sex})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(birthday, r'MeResponse', 'birthday');
    BuiltValueNullFieldError.checkNotNull(email, r'MeResponse', 'email');
    BuiltValueNullFieldError.checkNotNull(id, r'MeResponse', 'id');
    BuiltValueNullFieldError.checkNotNull(like, r'MeResponse', 'like');
    BuiltValueNullFieldError.checkNotNull(name, r'MeResponse', 'name');
    BuiltValueNullFieldError.checkNotNull(
        prefecture, r'MeResponse', 'prefecture');
    BuiltValueNullFieldError.checkNotNull(sex, r'MeResponse', 'sex');
  }

  @override
  MeResponse rebuild(void Function(MeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeResponseBuilder toBuilder() => new MeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MeResponse &&
        avatar == other.avatar &&
        birthday == other.birthday &&
        email == other.email &&
        id == other.id &&
        like == other.like &&
        message == other.message &&
        name == other.name &&
        prefecture == other.prefecture &&
        sex == other.sex;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, avatar.hashCode), birthday.hashCode),
                                email.hashCode),
                            id.hashCode),
                        like.hashCode),
                    message.hashCode),
                name.hashCode),
            prefecture.hashCode),
        sex.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MeResponse')
          ..add('avatar', avatar)
          ..add('birthday', birthday)
          ..add('email', email)
          ..add('id', id)
          ..add('like', like)
          ..add('message', message)
          ..add('name', name)
          ..add('prefecture', prefecture)
          ..add('sex', sex))
        .toString();
  }
}

class MeResponseBuilder implements Builder<MeResponse, MeResponseBuilder> {
  _$MeResponse? _$v;

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

  String? _birthday;
  String? get birthday => _$this._birthday;
  set birthday(String? birthday) => _$this._birthday = birthday;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _like;
  int? get like => _$this._like;
  set like(int? like) => _$this._like = like;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PrefectureResponseBuilder? _prefecture;
  PrefectureResponseBuilder get prefecture =>
      _$this._prefecture ??= new PrefectureResponseBuilder();
  set prefecture(PrefectureResponseBuilder? prefecture) =>
      _$this._prefecture = prefecture;

  String? _sex;
  String? get sex => _$this._sex;
  set sex(String? sex) => _$this._sex = sex;

  MeResponseBuilder() {
    MeResponse._defaults(this);
  }

  MeResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _avatar = $v.avatar;
      _birthday = $v.birthday;
      _email = $v.email;
      _id = $v.id;
      _like = $v.like;
      _message = $v.message;
      _name = $v.name;
      _prefecture = $v.prefecture.toBuilder();
      _sex = $v.sex;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MeResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MeResponse;
  }

  @override
  void update(void Function(MeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MeResponse build() => _build();

  _$MeResponse _build() {
    _$MeResponse _$result;
    try {
      _$result = _$v ??
          new _$MeResponse._(
              avatar: avatar,
              birthday: BuiltValueNullFieldError.checkNotNull(
                  birthday, r'MeResponse', 'birthday'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, r'MeResponse', 'email'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'MeResponse', 'id'),
              like: BuiltValueNullFieldError.checkNotNull(
                  like, r'MeResponse', 'like'),
              message: message,
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'MeResponse', 'name'),
              prefecture: prefecture.build(),
              sex: BuiltValueNullFieldError.checkNotNull(
                  sex, r'MeResponse', 'sex'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'prefecture';
        prefecture.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MeResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
