// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_story_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddStoryEntity {
  bool get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddStoryEntityCopyWith<AddStoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStoryEntityCopyWith<$Res> {
  factory $AddStoryEntityCopyWith(
          AddStoryEntity value, $Res Function(AddStoryEntity) then) =
      _$AddStoryEntityCopyWithImpl<$Res, AddStoryEntity>;
  @useResult
  $Res call({bool error, String message});
}

/// @nodoc
class _$AddStoryEntityCopyWithImpl<$Res, $Val extends AddStoryEntity>
    implements $AddStoryEntityCopyWith<$Res> {
  _$AddStoryEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$_AddStoryEntityCopyWith<$Res>
    implements $AddStoryEntityCopyWith<$Res> {
  factory _$$_AddStoryEntityCopyWith(
          _$_AddStoryEntity value, $Res Function(_$_AddStoryEntity) then) =
      __$$_AddStoryEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool error, String message});
}

/// @nodoc
class __$$_AddStoryEntityCopyWithImpl<$Res>
    extends _$AddStoryEntityCopyWithImpl<$Res, _$_AddStoryEntity>
    implements _$$_AddStoryEntityCopyWith<$Res> {
  __$$_AddStoryEntityCopyWithImpl(
      _$_AddStoryEntity _value, $Res Function(_$_AddStoryEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
  }) {
    return _then(_$_AddStoryEntity(
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

class _$_AddStoryEntity implements _AddStoryEntity {
  const _$_AddStoryEntity({required this.error, required this.message});

  @override
  final bool error;
  @override
  final String message;

  @override
  String toString() {
    return 'AddStoryEntity(error: $error, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddStoryEntity &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddStoryEntityCopyWith<_$_AddStoryEntity> get copyWith =>
      __$$_AddStoryEntityCopyWithImpl<_$_AddStoryEntity>(this, _$identity);
}

abstract class _AddStoryEntity implements AddStoryEntity {
  const factory _AddStoryEntity(
      {required final bool error,
      required final String message}) = _$_AddStoryEntity;

  @override
  bool get error;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_AddStoryEntityCopyWith<_$_AddStoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
