import 'package:dicogram/utils/helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'maps_detail_state.dart';
part 'maps_detail_cubit.freezed.dart';

class MapsDetailCubit extends Cubit<MapsDetailState> {
  MapsDetailCubit() : super(MapsDetailState.initial());

  void onMapCreated(
    GoogleMapController controller,
    double lat,
    double lon,
  ) async {
    final center = LatLng(lat, lon);
    final marker = Marker(
      markerId: const MarkerId("dicogram"),
      position: center,
      onTap: () {
        controller.animateCamera(
          CameraUpdate.newLatLngZoom(center, 18),
        );
      },
      infoWindow: InfoWindow(title: await Helper.getCity(lat, lon)),
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
