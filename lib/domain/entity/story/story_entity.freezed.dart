// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StoryEntity {
  bool get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<StoryResultEntity> get stories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoryEntityCopyWith<StoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryEntityCopyWith<$Res> {
  factory $StoryEntityCopyWith(
          StoryEntity value, $Res Function(StoryEntity) then) =
      _$StoryEntityCopyWithImpl<$Res, StoryEntity>;
  @useResult
  $Res call({bool error, String message, List<StoryResultEntity> stories});
}

/// @nodoc
class _$StoryEntityCopyWithImpl<$Res, $Val extends StoryEntity>
    implements $StoryEntityCopyWith<$Res> {
  _$StoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? stories = null,
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
      stories: null == stories
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<StoryResultEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StoryEntityCopyWith<$Res>
    implements $StoryEntityCopyWith<$Res> {
  factory _$$_StoryEntityCopyWith(
          _$_StoryEntity value, $Res Function(_$_StoryEntity) then) =
      __$$_StoryEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool error, String message, List<StoryResultEntity> stories});
}

/// @nodoc
class __$$_StoryEntityCopyWithImpl<$Res>
    extends _$StoryEntityCopyWithImpl<$Res, _$_StoryEntity>
    implements _$$_StoryEntityCopyWith<$Res> {
  __$$_StoryEntityCopyWithImpl(
      _$_StoryEntity _value, $Res Function(_$_StoryEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? stories = null,
  }) {
    return _then(_$_StoryEntity(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      stories: null == stories
          ? _value._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<StoryResultEntity>,
    ));
  }
}

/// @nodoc

class _$_StoryEntity implements _StoryEntity {
  const _$_StoryEntity(
      {required this.error,
      required this.message,
      required final List<StoryResultEntity> stories})
      : _stories = stories;

  @override
  final bool error;
  @override
  final String message;
  final List<StoryResultEntity> _stories;
  @override
  List<StoryResultEntity> get stories {
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  @override
  String toString() {
    return 'StoryEntity(error: $error, message: $message, stories: $stories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoryEntity &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._stories, _stories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, message,
      const DeepCollectionEquality().hash(_stories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoryEntityCopyWith<_$_StoryEntity> get copyWith =>
      __$$_StoryEntityCopyWithImpl<_$_StoryEntity>(this, _$identity);
}

abstract class _StoryEntity implements StoryEntity {
  const factory _StoryEntity(
      {required final bool error,
      required final String message,
      required final List<StoryResultEntity> stories}) = _$_StoryEntity;

  @override
  bool get error;
  @override
  String get message;
  @override
  List<StoryResultEntity> get stories;
  @override
  @JsonKey(ignore: true)
  _$$_StoryEntityCopyWith<_$_StoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StoryResultEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoryResultEntityCopyWith<StoryResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryResultEntityCopyWith<$Res> {
  factory $StoryResultEntityCopyWith(
          StoryResultEntity value, $Res Function(StoryResultEntity) then) =
      _$StoryResultEntityCopyWithImpl<$Res, StoryResultEntity>;
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
class _$StoryResultEntityCopyWithImpl<$Res, $Val extends StoryResultEntity>
    implements $StoryResultEntityCopyWith<$Res> {
  _$StoryResultEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$_StoryResultEntityCopyWith<$Res>
    implements $StoryResultEntityCopyWith<$Res> {
  factory _$$_StoryResultEntityCopyWith(_$_StoryResultEntity value,
          $Res Function(_$_StoryResultEntity) then) =
      __$$_StoryResultEntityCopyWithImpl<$Res>;
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
class __$$_StoryResultEntityCopyWithImpl<$Res>
    extends _$StoryResultEntityCopyWithImpl<$Res, _$_StoryResultEntity>
    implements _$$_StoryResultEntityCopyWith<$Res> {
  __$$_StoryResultEntityCopyWithImpl(
      _$_StoryResultEntity _value, $Res Function(_$_StoryResultEntity) _then)
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
    return _then(_$_StoryResultEntity(
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

class _$_StoryResultEntity implements _StoryResultEntity {
  const _$_StoryResultEntity(
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
    return 'StoryResultEntity(id: $id, name: $name, description: $description, photoUrl: $photoUrl, createdAt: $createdAt, lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoryResultEntity &&
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
  _$$_StoryResultEntityCopyWith<_$_StoryResultEntity> get copyWith =>
      __$$_StoryResultEntityCopyWithImpl<_$_StoryResultEntity>(
          this, _$identity);
}

abstract class _StoryResultEntity implements StoryResultEntity {
  const factory _StoryResultEntity(
      {required final String id,
      required final String name,
      required final String description,
      required final String photoUrl,
      required final String createdAt,
      final double? lat,
      final double? lon}) = _$_StoryResultEntity;

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
  _$$_StoryResultEntityCopyWith<_$_StoryResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
