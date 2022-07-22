part of swagger.api;

class Login {
  String userName = null;

  String password = null;

  Login();

  @override
  String toString() {
    return 'Login[userName=$userName, password=$password, ]';
  }

  Login.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    userName = json['userName'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    return {'userName': userName, 'password': password};
  }

  static List<Login> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Login>()
        : json.map((value) => new Login.fromJson(value)).toList();
  }

  static Map<String, Login> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Login>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Login.fromJson(value));
    }
    return map;
  }
}
