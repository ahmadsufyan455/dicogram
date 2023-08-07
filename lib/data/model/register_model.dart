class RegisterModel {
  bool? error;
  String? message;

  RegisterModel({this.error, this.message});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    message = json['message'];
  }
}

class RequestRegister {
  final String name;
  final String email;
  final String password;

  RequestRegister({
    required this.name,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'password': password,
      };
}
