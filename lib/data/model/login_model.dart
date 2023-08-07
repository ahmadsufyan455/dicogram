class LoginModel {
  bool? error;
  String? message;
  LoginResult? loginResult;

  LoginModel({this.error, this.message, this.loginResult});

  LoginModel.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    message = json['message'];
    loginResult = LoginResult.fromJson(json['loginResult']);
  }
}

class LoginResult {
  String? userId;
  String? name;
  String? token;

  LoginResult({this.userId, this.name, this.token});

  LoginResult.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    name = json['name'];
    token = json['token'];
  }
}

class RequestLogin {
  final String email;
  final String password;

  RequestLogin({required this.email, required this.password});

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
      };
}
