import 'package:dicogram/presentation/widget/custom_button.dart';
import 'package:dicogram/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart' as geo;

class PlacemarkWidget extends StatelessWidget {
  const PlacemarkWidget({
    super.key,
    required this.placemark,
    required this.onTap,
  });
  final geo.Placemark placemark;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            placemark.street!,
            style: TextStyles.title,
          ),
          Text(
            '${placemark.subLocality}, ${placemark.locality}, ${placemark.postalCode}, ${placemark.country}',
            style: TextStyles.body,
          ),
          const SizedBox(height: 16.0),
          CustomButton(label: 'Pick Location', onTap: onTap),
        ],
      ),
    );
  }
}
