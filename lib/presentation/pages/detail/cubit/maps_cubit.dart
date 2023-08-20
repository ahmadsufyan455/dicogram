import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'maps_state.dart';
part 'maps_cubit.freezed.dart';

class MapsCubit extends Cubit<MapsState> {
  MapsCubit() : super(MapsState.initial());

  void onMapCreated(GoogleMapController controller, double lat, double lon) {
    final center = LatLng(lat, lon);
    final marker = Marker(
      markerId: const MarkerId("dicogram"),
      position: center,
      onTap: () {
        controller.animateCamera(
          CameraUpdate.newLatLngZoom(center, 18),
        );
      },
    );
    emit(state.copyWith(mapController: controller, markers: {marker}));
  }

  void zoomIn() {
    state.mapController?.animateCamera(
      CameraUpdate.zoomIn(),
    );
  }

  void zoomOut() {
    state.mapController?.animateCamera(
      CameraUpdate.zoomOut(),
    );
  }

  void changeMapType(MapType mapType) {
    emit(state.copyWith(selectedMapType: mapType));
  }
}
