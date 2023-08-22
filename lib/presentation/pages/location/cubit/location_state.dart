part of 'location_cubit.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    required Set<Marker> markers,
    required geo.Placemark? placemark,
  }) = _LocationState;

  factory LocationState.initial() => const LocationState(
        markers: {},
        placemark: null,
      );
}
