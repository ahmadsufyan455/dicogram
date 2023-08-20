// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'maps_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapsState {
  GoogleMapController? get mapController => throw _privateConstructorUsedError;
  Set<Marker> get markers => throw _privateConstructorUsedError;
  MapType get selectedMapType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapsStateCopyWith<MapsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapsStateCopyWith<$Res> {
  factory $MapsStateCopyWith(MapsState value, $Res Function(MapsState) then) =
      _$MapsStateCopyWithImpl<$Res, MapsState>;
  @useResult
  $Res call(
      {GoogleMapController? mapController,
      Set<Marker> markers,
      MapType selectedMapType});
}

/// @nodoc
class _$MapsStateCopyWithImpl<$Res, $Val extends MapsState>
    implements $MapsStateCopyWith<$Res> {
  _$MapsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mapController = freezed,
    Object? markers = null,
    Object? selectedMapType = null,
  }) {
    return _then(_value.copyWith(
      mapController: freezed == mapController
          ? _value.mapController
          : mapController // ignore: cast_nullable_to_non_nullable
              as GoogleMapController?,
      markers: null == markers
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      selectedMapType: null == selectedMapType
          ? _value.selectedMapType
          : selectedMapType // ignore: cast_nullable_to_non_nullable
              as MapType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MapsStateCopyWith<$Res> implements $MapsStateCopyWith<$Res> {
  factory _$$_MapsStateCopyWith(
          _$_MapsState value, $Res Function(_$_MapsState) then) =
      __$$_MapsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GoogleMapController? mapController,
      Set<Marker> markers,
      MapType selectedMapType});
}

/// @nodoc
class __$$_MapsStateCopyWithImpl<$Res>
    extends _$MapsStateCopyWithImpl<$Res, _$_MapsState>
    implements _$$_MapsStateCopyWith<$Res> {
  __$$_MapsStateCopyWithImpl(
      _$_MapsState _value, $Res Function(_$_MapsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mapController = freezed,
    Object? markers = null,
    Object? selectedMapType = null,
  }) {
    return _then(_$_MapsState(
      mapController: freezed == mapController
          ? _value.mapController
          : mapController // ignore: cast_nullable_to_non_nullable
              as GoogleMapController?,
      markers: null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      selectedMapType: null == selectedMapType
          ? _value.selectedMapType
          : selectedMapType // ignore: cast_nullable_to_non_nullable
              as MapType,
    ));
  }
}

/// @nodoc

class _$_MapsState implements _MapsState {
  const _$_MapsState(
      {this.mapController = null,
      final Set<Marker> markers = const {},
      this.selectedMapType = MapType.normal})
      : _markers = markers;

  @override
  @JsonKey()
  final GoogleMapController? mapController;
  final Set<Marker> _markers;
  @override
  @JsonKey()
  Set<Marker> get markers {
    if (_markers is EqualUnmodifiableSetView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_markers);
  }

  @override
  @JsonKey()
  final MapType selectedMapType;

  @override
  String toString() {
    return 'MapsState(mapController: $mapController, markers: $markers, selectedMapType: $selectedMapType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapsState &&
            (identical(other.mapController, mapController) ||
                other.mapController == mapController) &&
            const DeepCollectionEquality().equals(other._markers, _markers) &&
            (identical(other.selectedMapType, selectedMapType) ||
                other.selectedMapType == selectedMapType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mapController,
      const DeepCollectionEquality().hash(_markers), selectedMapType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapsStateCopyWith<_$_MapsState> get copyWith =>
      __$$_MapsStateCopyWithImpl<_$_MapsState>(this, _$identity);
}

abstract class _MapsState implements MapsState {
  const factory _MapsState(
      {final GoogleMapController? mapController,
      final Set<Marker> markers,
      final MapType selectedMapType}) = _$_MapsState;

  @override
  GoogleMapController? get mapController;
  @override
  Set<Marker> get markers;
  @override
  MapType get selectedMapType;
  @override
  @JsonKey(ignore: true)
  _$$_MapsStateCopyWith<_$_MapsState> get copyWith =>
      throw _privateConstructorUsedError;
}
