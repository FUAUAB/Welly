part of swagger.api;

class CultureString {
  /* Language ID, as retrievable from <a href=\"?deepLinking=true#/Language/Get\">/api/Language</a> */
  int languageId = null;

/* Value of string */
  String value = null;

  CultureString();

  @override
  String toString() {
    return 'CultureString[languageId=$languageId, value=$value, ]';
  }

  CultureString.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    languageId = json['languageId'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    return {'languageId': languageId, 'value': value};
  }

  static List<CultureString> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CultureString>()
        : json.map((value) => new CultureString.fromJson(value)).toList();
  }

  static Map<String, CultureString> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CultureString>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CultureString.fromJson(value));
    }
    return map;
  }
}
