import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Helper {
  static Future<String> getCity(
    double latitude,
    double longitude,
  ) async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(latitude, longitude);
    return placemarks[0].locality ?? 'Unknown city';
  }

  static String formatTimestamp(BuildContext context, String timestamp) {
    DateTime dateTime = DateTime.parse(timestamp);
    Duration timeAgo = DateTime.now().toUtc().difference(dateTime);

    if (timeAgo.inDays > 0) {
      return DateFormat('MMM d').format(dateTime);
    } else if (timeAgo.inHours > 0) {
      return AppLocalizations.of(context)!.hoursAgo('${timeAgo.inHours}');
    } else if (timeAgo.inMinutes > 0) {
      return AppLocalizations.of(context)!.minutesAgo('${timeAgo.inMinutes}');
    } else {
      return AppLocalizations.of(context)!.secondsAgo('${timeAgo.inSeconds}');
    }
  }
}
