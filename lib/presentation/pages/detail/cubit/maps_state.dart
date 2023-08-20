part of 'maps_cubit.dart';

@freezed
class MapsState with _$MapsState {
  const factory MapsState({
    @Default(null) GoogleMapController? mapController,
    @Default({}) Set<Marker> markers,
    @Default(MapType.normal) MapType selectedMapType,
  }) = _MapsState;

  factory MapsState.initial() => const MapsState();
}
