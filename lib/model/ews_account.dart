part of swagger.api;

class EWSAccount {
  String emailAddress = null;

  String password = null;

  String url = null;

  EWSAccount();

  @override
  String toString() {
    return 'EWSAccount[emailAddress=$emailAddress, password=$password, url=$url, ]';
  }

  EWSAccount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    emailAddress = json['emailAddress'];
    password = json['password'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {'emailAddress': emailAddress, 'password': password, 'url': url};
  }

  static List<EWSAccount> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<EWSAccount>()
        : json.map((value) => new EWSAccount.fromJson(value)).toList();
  }

  static Map<String, EWSAccount> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EWSAccount>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new EWSAccount.fromJson(value));
    }
    return map;
  }
}
