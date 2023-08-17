// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailEntity {
  bool get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DetailResultEntity get detail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailEntityCopyWith<DetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailEntityCopyWith<$Res> {
  factory $DetailEntityCopyWith(
          DetailEntity value, $Res Function(DetailEntity) then) =
      _$DetailEntityCopyWithImpl<$Res, DetailEntity>;
  @useResult
  $Res call({bool error, String message, DetailResultEntity detail});

  $DetailResultEntityCopyWith<$Res> get detail;
}

/// @nodoc
class _$DetailEntityCopyWithImpl<$Res, $Val extends DetailEntity>
    implements $DetailEntityCopyWith<$Res> {
  _$DetailEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? detail = null,
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
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as DetailResultEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailResultEntityCopyWith<$Res> get detail {
    return $DetailResultEntityCopyWith<$Res>(_value.detail, (value) {
      return _then(_value.copyWith(detail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DetailEntityCopyWith<$Res>
    implements $DetailEntityCopyWith<$Res> {
  factory _$$_DetailEntityCopyWith(
          _$_DetailEntity value, $Res Function(_$_DetailEntity) then) =
      __$$_DetailEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool error, String message, DetailResultEntity detail});

  @override
  $DetailResultEntityCopyWith<$Res> get detail;
}

/// @nodoc
class __$$_DetailEntityCopyWithImpl<$Res>
    extends _$DetailEntityCopyWithImpl<$Res, _$_DetailEntity>
    implements _$$_DetailEntityCopyWith<$Res> {
  __$$_DetailEntityCopyWithImpl(
      _$_DetailEntity _value, $Res Function(_$_DetailEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? detail = null,
  }) {
    return _then(_$_DetailEntity(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as DetailResultEntity,
    ));
  }
}

/// @nodoc

class _$_DetailEntity implements _DetailEntity {
  const _$_DetailEntity(
      {required this.error, required this.message, required this.detail});

  @override
  final bool error;
  @override
  final String message;
  @override
  final DetailResultEntity detail;

  @override
  String toString() {
    return 'DetailEntity(error: $error, message: $message, detail: $detail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailEntity &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, message, detail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailEntityCopyWith<_$_DetailEntity> get copyWith =>
      __$$_DetailEntityCopyWithImpl<_$_DetailEntity>(this, _$identity);
}

abstract class _DetailEntity implements DetailEntity {
  const factory _DetailEntity(
      {required final bool error,
      required final String message,
      required final DetailResultEntity detail}) = _$_DetailEntity;

  @override
  bool get error;
  @override
  String get message;
  @override
  DetailResultEntity get detail;
  @override
  @JsonKey(ignore: true)
  _$$_DetailEntityCopyWith<_$_DetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailResultEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailResultEntityCopyWith<DetailResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailResultEntityCopyWith<$Res> {
  factory $DetailResultEntityCopyWith(
          DetailResultEntity value, $Res Function(DetailResultEntity) then) =
      _$DetailResultEntityCopyWithImpl<$Res, DetailResultEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String photoUrl,
      String createdAt,
      double? lat,
      double? lon});
}

/// @nodoc
class _$DetailResultEntityCopyWithImpl<$Res, $Val extends DetailResultEntity>
    implements $DetailResultEntityCopyWith<$Res> {
  _$DetailResultEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? photoUrl = null,
    Object? createdAt = null,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailResultEntityCopyWith<$Res>
    implements $DetailResultEntityCopyWith<$Res> {
  factory _$$_DetailResultEntityCopyWith(_$_DetailResultEntity value,
          $Res Function(_$_DetailResultEntity) then) =
      __$$_DetailResultEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String photoUrl,
      String createdAt,
      double? lat,
      double? lon});
}

/// @nodoc
class __$$_DetailResultEntityCopyWithImpl<$Res>
    extends _$DetailResultEntityCopyWithImpl<$Res, _$_DetailResultEntity>
    implements _$$_DetailResultEntityCopyWith<$Res> {
  __$$_DetailResultEntityCopyWithImpl(
      _$_DetailResultEntity _value, $Res Function(_$_DetailResultEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? photoUrl = null,
    Object? createdAt = null,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_$_DetailResultEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_DetailResultEntity implements _DetailResultEntity {
  const _$_DetailResultEntity(
      {required this.id,
      required this.name,
      required this.description,
      required this.photoUrl,
      required this.createdAt,
      this.lat,
      this.lon});

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String photoUrl;
  @override
  final String createdAt;
  @override
  final double? lat;
  @override
  final double? lon;

  @override
  String toString() {
    return 'DetailResultEntity(id: $id, name: $name, description: $description, photoUrl: $photoUrl, createdAt: $createdAt, lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailResultEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, photoUrl, createdAt, lat, lon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailResultEntityCopyWith<_$_DetailResultEntity> get copyWith =>
      __$$_DetailResultEntityCopyWithImpl<_$_DetailResultEntity>(
          this, _$identity);
}

abstract class _DetailResultEntity implements DetailResultEntity {
  const factory _DetailResultEntity(
      {required final String id,
      required final String name,
      required final String description,
      required final String photoUrl,
      required final String createdAt,
      final double? lat,
      final double? lon}) = _$_DetailResultEntity;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get photoUrl;
  @override
  String get createdAt;
  @override
  double? get lat;
  @override
  double? get lon;
  @override
  @JsonKey(ignore: true)
  _$$_DetailResultEntityCopyWith<_$_DetailResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
