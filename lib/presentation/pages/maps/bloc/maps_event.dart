part of 'maps_bloc.dart';

@freezed
class MapsEvent with _$MapsEvent {
  const factory MapsEvent.loadStoryLocation() = _LoadStoryLocation;
}
