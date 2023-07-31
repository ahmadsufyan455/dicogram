class DetailStory {
  bool? error;
  String? message;
  DetailResult? detail;

  DetailStory({this.error, this.message, this.detail});

  DetailStory.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    message = json['message'];
    detail = DetailResult.fromJson(json['story']);
  }
}

class DetailResult {
  String? id;
  String? name;
  String? description;
  String? photoUrl;
  String? createdAt;
  double? lat;
  double? lon;

  DetailResult({
    this.id,
    this.name,
    this.description,
    this.photoUrl,
    this.createdAt,
    this.lat,
    this.lon,
  });

  DetailResult.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    photoUrl = json['photoUrl'];
    createdAt = json['createdAt'];
    lat = json['lat'];
    lon = json['lon'];
  }
}
