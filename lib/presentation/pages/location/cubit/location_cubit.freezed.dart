// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationState {
  Set<Marker> get markers => throw _privateConstructorUsedError;
  geo.Placemark? get placemark => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
  @useResult
  $Res call({Set<Marker> markers, geo.Placemark? placemark});
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? markers = null,
    Object? placemark = freezed,
  }) {
    return _then(_value.copyWith(
      markers: null == markers
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      placemark: freezed == placemark
          ? _value.placemark
          : placemark // ignore: cast_nullable_to_non_nullable
              as geo.Placemark?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationStateCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$$_LocationStateCopyWith(
          _$_LocationState value, $Res Function(_$_LocationState) then) =
      __$$_LocationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<Marker> markers, geo.Placemark? placemark});
}

/// @nodoc
class __$$_LocationStateCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$_LocationState>
    implements _$$_LocationStateCopyWith<$Res> {
  __$$_LocationStateCopyWithImpl(
      _$_LocationState _value, $Res Function(_$_LocationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? markers = null,
    Object? placemark = freezed,
  }) {
    return _then(_$_LocationState(
      markers: null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      placemark: freezed == placemark
          ? _value.placemark
          : placemark // ignore: cast_nullable_to_non_nullable
              as geo.Placemark?,
    ));
  }
}

/// @nodoc

class _$_LocationState implements _LocationState {
  const _$_LocationState(
      {required final Set<Marker> markers, required this.placemark})
      : _markers = markers;

  final Set<Marker> _markers;
  @override
  Set<Marker> get markers {
    if (_markers is EqualUnmodifiableSetView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_markers);
  }

  @override
  final geo.Placemark? placemark;

  @override
  String toString() {
    return 'LocationState(markers: $markers, placemark: $placemark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationState &&
            const DeepCollectionEquality().equals(other._markers, _markers) &&
            (identical(other.placemark, placemark) ||
                other.placemark == placemark));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_markers), placemark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationStateCopyWith<_$_LocationState> get copyWith =>
      __$$_LocationStateCopyWithImpl<_$_LocationState>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  const factory _LocationState(
      {required final Set<Marker> markers,
      required final geo.Placemark? placemark}) = _$_LocationState;

  @override
  Set<Marker> get markers;
  @override
  geo.Placemark? get placemark;
  @override
  @JsonKey(ignore: true)
  _$$_LocationStateCopyWith<_$_LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}
