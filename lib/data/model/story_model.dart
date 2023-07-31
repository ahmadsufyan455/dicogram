class Story {
  bool? error;
  String? message;
  List<StoryResult>? stories;

  Story({this.error, this.message, this.stories});

  Story.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    message = json['message'];
    stories = List<StoryResult>.from(
      json['listStory'].map(
        (story) => StoryResult.fromJson(story),
      ),
    );
  }
}

class StoryResult {
  String? id;
  String? name;
  String? description;
  String? photoUrl;
  String? createdAt;
  double? lat;
  double? lon;

  StoryResult({
    this.id,
    this.name,
    this.description,
    this.photoUrl,
    this.createdAt,
    this.lat,
    this.lon,
  });

  StoryResult.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    photoUrl = json['photoUrl'];
    createdAt = json['createdAt'];
    lat = json['lat'];
    lon = json['lon'];
  }
}
