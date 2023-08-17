// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEntity {
  bool get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  LoginResultEntity get loginResult => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEntityCopyWith<LoginEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEntityCopyWith<$Res> {
  factory $LoginEntityCopyWith(
          LoginEntity value, $Res Function(LoginEntity) then) =
      _$LoginEntityCopyWithImpl<$Res, LoginEntity>;
  @useResult
  $Res call({bool error, String message, LoginResultEntity loginResult});

  $LoginResultEntityCopyWith<$Res> get loginResult;
}

/// @nodoc
class _$LoginEntityCopyWithImpl<$Res, $Val extends LoginEntity>
    implements $LoginEntityCopyWith<$Res> {
  _$LoginEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? loginResult = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      loginResult: null == loginResult
          ? _value.loginResult
          : loginResult // ignore: cast_nullable_to_non_nullable
              as LoginResultEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginResultEntityCopyWith<$Res> get loginResult {
    return $LoginResultEntityCopyWith<$Res>(_value.loginResult, (value) {
      return _then(_value.copyWith(loginResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginEntityCopyWith<$Res>
    implements $LoginEntityCopyWith<$Res> {
  factory _$$_LoginEntityCopyWith(
          _$_LoginEntity value, $Res Function(_$_LoginEntity) then) =
      __$$_LoginEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool error, String message, LoginResultEntity loginResult});

  @override
  $LoginResultEntityCopyWith<$Res> get loginResult;
}

/// @nodoc
class __$$_LoginEntityCopyWithImpl<$Res>
    extends _$LoginEntityCopyWithImpl<$Res, _$_LoginEntity>
    implements _$$_LoginEntityCopyWith<$Res> {
  __$$_LoginEntityCopyWithImpl(
      _$_LoginEntity _value, $Res Function(_$_LoginEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? loginResult = null,
  }) {
    return _then(_$_LoginEntity(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      loginResult: null == loginResult
          ? _value.loginResult
          : loginResult // ignore: cast_nullable_to_non_nullable
              as LoginResultEntity,
    ));
  }
}

/// @nodoc

class _$_LoginEntity implements _LoginEntity {
  const _$_LoginEntity(
      {required this.error, required this.message, required this.loginResult});

  @override
  final bool error;
  @override
  final String message;
  @override
  final LoginResultEntity loginResult;

  @override
  String toString() {
    return 'LoginEntity(error: $error, message: $message, loginResult: $loginResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginEntity &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.loginResult, loginResult) ||
                other.loginResult == loginResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, message, loginResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginEntityCopyWith<_$_LoginEntity> get copyWith =>
      __$$_LoginEntityCopyWithImpl<_$_LoginEntity>(this, _$identity);
}

abstract class _LoginEntity implements LoginEntity {
  const factory _LoginEntity(
      {required final bool error,
      required final String message,
      required final LoginResultEntity loginResult}) = _$_LoginEntity;

  @override
  bool get error;
  @override
  String get message;
  @override
  LoginResultEntity get loginResult;
  @override
  @JsonKey(ignore: true)
  _$$_LoginEntityCopyWith<_$_LoginEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginResultEntity {
  String get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginResultEntityCopyWith<LoginResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResultEntityCopyWith<$Res> {
  factory $LoginResultEntityCopyWith(
          LoginResultEntity value, $Res Function(LoginResultEntity) then) =
      _$LoginResultEntityCopyWithImpl<$Res, LoginResultEntity>;
  @useResult
  $Res call({String userId, String name, String token});
}

/// @nodoc
class _$LoginResultEntityCopyWithImpl<$Res, $Val extends LoginResultEntity>
    implements $LoginResultEntityCopyWith<$Res> {
  _$LoginResultEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginResultEntityCopyWith<$Res>
    implements $LoginResultEntityCopyWith<$Res> {
  factory _$$_LoginResultEntityCopyWith(_$_LoginResultEntity value,
          $Res Function(_$_LoginResultEntity) then) =
      __$$_LoginResultEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String name, String token});
}

/// @nodoc
class __$$_LoginResultEntityCopyWithImpl<$Res>
    extends _$LoginResultEntityCopyWithImpl<$Res, _$_LoginResultEntity>
    implements _$$_LoginResultEntityCopyWith<$Res> {
  __$$_LoginResultEntityCopyWithImpl(
      _$_LoginResultEntity _value, $Res Function(_$_LoginResultEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? token = null,
  }) {
    return _then(_$_LoginResultEntity(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginResultEntity implements _LoginResultEntity {
  const _$_LoginResultEntity(
      {required this.userId, required this.name, required this.token});

  @override
  final String userId;
  @override
  final String name;
  @override
  final String token;

  @override
  String toString() {
    return 'LoginResultEntity(userId: $userId, name: $name, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginResultEntity &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, name, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginResultEntityCopyWith<_$_LoginResultEntity> get copyWith =>
      __$$_LoginResultEntityCopyWithImpl<_$_LoginResultEntity>(
          this, _$identity);
}

abstract class _LoginResultEntity implements LoginResultEntity {
  const factory _LoginResultEntity(
      {required final String userId,
      required final String name,
      required final String token}) = _$_LoginResultEntity;

  @override
  String get userId;
  @override
  String get name;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_LoginResultEntityCopyWith<_$_LoginResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
