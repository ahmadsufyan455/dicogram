class AddStory {
  bool? error;
  String? message;

  AddStory({this.error, this.message});

  AddStory.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    message = json['message'];
  }
}

class RequestAddStory {
  // do add properties
}
