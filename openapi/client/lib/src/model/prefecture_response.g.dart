// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prefecture_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrefectureResponse extends PrefectureResponse {
  @override
  final int code;
  @override
  final String name;

  factory _$PrefectureResponse(
          [void Function(PrefectureResponseBuilder)? updates]) =>
      (new PrefectureResponseBuilder()..update(updates))._build();

  _$PrefectureResponse._({required this.code, required this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(code, r'PrefectureResponse', 'code');
    BuiltValueNullFieldError.checkNotNull(name, r'PrefectureResponse', 'name');
  }

  @override
  PrefectureResponse rebuild(
          void Function(PrefectureResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrefectureResponseBuilder toBuilder() =>
      new PrefectureResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrefectureResponse &&
        code == other.code &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, code.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrefectureResponse')
          ..add('code', code)
          ..add('name', name))
        .toString();
  }
}

class PrefectureResponseBuilder
    implements Builder<PrefectureResponse, PrefectureResponseBuilder> {
  _$PrefectureResponse? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PrefectureResponseBuilder() {
    PrefectureResponse._defaults(this);
  }

  PrefectureResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrefectureResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrefectureResponse;
  }

  @override
  void update(void Function(PrefectureResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrefectureResponse build() => _build();

  _$PrefectureResponse _build() {
    final _$result = _$v ??
        new _$PrefectureResponse._(
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'PrefectureResponse', 'code'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'PrefectureResponse', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
