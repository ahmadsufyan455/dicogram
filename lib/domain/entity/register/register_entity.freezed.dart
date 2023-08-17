// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterEntity {
  bool get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterEntityCopyWith<RegisterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEntityCopyWith<$Res> {
  factory $RegisterEntityCopyWith(
          RegisterEntity value, $Res Function(RegisterEntity) then) =
      _$RegisterEntityCopyWithImpl<$Res, RegisterEntity>;
  @useResult
  $Res call({bool error, String message});
}

/// @nodoc
class _$RegisterEntityCopyWithImpl<$Res, $Val extends RegisterEntity>
    implements $RegisterEntityCopyWith<$Res> {
  _$RegisterEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterEntityCopyWith<$Res>
    implements $RegisterEntityCopyWith<$Res> {
  factory _$$_RegisterEntityCopyWith(
          _$_RegisterEntity value, $Res Function(_$_RegisterEntity) then) =
      __$$_RegisterEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool error, String message});
}

/// @nodoc
class __$$_RegisterEntityCopyWithImpl<$Res>
    extends _$RegisterEntityCopyWithImpl<$Res, _$_RegisterEntity>
    implements _$$_RegisterEntityCopyWith<$Res> {
  __$$_RegisterEntityCopyWithImpl(
      _$_RegisterEntity _value, $Res Function(_$_RegisterEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
  }) {
    return _then(_$_RegisterEntity(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterEntity implements _RegisterEntity {
  const _$_RegisterEntity({required this.error, required this.message});

  @override
  final bool error;
  @override
  final String message;

  @override
  String toString() {
    return 'RegisterEntity(error: $error, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterEntity &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterEntityCopyWith<_$_RegisterEntity> get copyWith =>
      __$$_RegisterEntityCopyWithImpl<_$_RegisterEntity>(this, _$identity);
}

abstract class _RegisterEntity implements RegisterEntity {
  const factory _RegisterEntity(
      {required final bool error,
      required final String message}) = _$_RegisterEntity;

  @override
  bool get error;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterEntityCopyWith<_$_RegisterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
