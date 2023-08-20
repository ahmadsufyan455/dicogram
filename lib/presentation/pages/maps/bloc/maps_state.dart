part of 'maps_bloc.dart';

@freezed
class MapsState with _$MapsState {
  const factory MapsState.initial() = _Initial;
  const factory MapsState.loading() = _Loading;
  const factory MapsState.loaded(List<StoryResultEntity> stories) = _Loaded;
  const factory MapsState.error(String error) = _Error;
}
