class LoginResponse {
  LoginResponse({
    this.accessToken,
    this.msg,
    this.isSucceeded,
    this.username,
    this.userId
  });

  LoginResponse.fromJson(dynamic json) {
    accessToken = json['token'];
    code = json['statusCode'];
    msg = json['message'];
    isSucceeded = json['isSucceeded'];

    userId = json['id'];
    username = json['username'];

  }

  String? accessToken;

  int? code;
  String? msg;
  bool? isSucceeded;

  String? username;
  String? userId;

}
