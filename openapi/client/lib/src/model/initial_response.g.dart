// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initial_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InitialResponse extends InitialResponse {
  @override
  final String currentVersion;
  @override
  final String minVersion;

  factory _$InitialResponse([void Function(InitialResponseBuilder)? updates]) =>
      (new InitialResponseBuilder()..update(updates))._build();

  _$InitialResponse._({required this.currentVersion, required this.minVersion})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        currentVersion, r'InitialResponse', 'currentVersion');
    BuiltValueNullFieldError.checkNotNull(
        minVersion, r'InitialResponse', 'minVersion');
  }

  @override
  InitialResponse rebuild(void Function(InitialResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InitialResponseBuilder toBuilder() =>
      new InitialResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InitialResponse &&
        currentVersion == other.currentVersion &&
        minVersion == other.minVersion;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, currentVersion.hashCode), minVersion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InitialResponse')
          ..add('currentVersion', currentVersion)
          ..add('minVersion', minVersion))
        .toString();
  }
}

class InitialResponseBuilder
    implements Builder<InitialResponse, InitialResponseBuilder> {
  _$InitialResponse? _$v;

  String? _currentVersion;
  String? get currentVersion => _$this._currentVersion;
  set currentVersion(String? currentVersion) =>
      _$this._currentVersion = currentVersion;

  String? _minVersion;
  String? get minVersion => _$this._minVersion;
  set minVersion(String? minVersion) => _$this._minVersion = minVersion;

  InitialResponseBuilder() {
    InitialResponse._defaults(this);
  }

  InitialResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentVersion = $v.currentVersion;
      _minVersion = $v.minVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InitialResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InitialResponse;
  }

  @override
  void update(void Function(InitialResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InitialResponse build() => _build();

  _$InitialResponse _build() {
    final _$result = _$v ??
        new _$InitialResponse._(
            currentVersion: BuiltValueNullFieldError.checkNotNull(
                currentVersion, r'InitialResponse', 'currentVersion'),
            minVersion: BuiltValueNullFieldError.checkNotNull(
                minVersion, r'InitialResponse', 'minVersion'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
