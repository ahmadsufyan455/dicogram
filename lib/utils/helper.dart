import 'package:geocoding/geocoding.dart';
import 'package:intl/intl.dart';

class Helper {
  static Future<String?> getCity(
    double latitude,
    double longitude,
  ) async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(latitude, longitude);
    if (placemarks.isEmpty) {
      return null;
    }
    return placemarks[0].locality;
  }

  static String formatTimestamp(String timestamp) {
    DateTime dateTime = DateTime.parse(timestamp);
    Duration timeAgo = DateTime.now().toUtc().difference(dateTime);

    if (timeAgo.inDays > 0) {
      return DateFormat('MMM d').format(dateTime);
    } else if (timeAgo.inHours > 0) {
      return '${timeAgo.inHours} hours ago';
    } else if (timeAgo.inMinutes > 0) {
      return '${timeAgo.inMinutes} minutes ago';
    } else {
      return '${timeAgo.inSeconds} seconds ago';
    }
  }
}
