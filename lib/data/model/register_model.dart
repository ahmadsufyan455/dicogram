class Register {
  bool? error;
  String? message;

  Register({this.error, this.message});

  Register.fromJson(Map<String, dynamic> json) {
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
