part of 'maps_detail_cubit.dart';

@freezed
class MapsDetailState with _$MapsDetailState {
  const factory MapsDetailState({
    @Default(null) GoogleMapController? mapController,
    @Default({}) Set<Marker> markers,
    @Default(MapType.normal) MapType selectedMapType,
  }) = _MapsState;

  factory MapsDetailState.initial() => const MapsDetailState();
}
