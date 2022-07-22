part of swagger.api;

class V12Rayon {
  /* Rayon Id, as retrievable from <a href=\"?deepLinking=true#/Rayon/Get\">/api/Customer</a> */
  int id = null;

/* Rayon description */
  String description = null;

/* Language Id, as retrievable from <a href=\"?deepLinking=true#/Language/Get\">/api/Language</a> */
  int languageId = null;

  V12Rayon();

  @override
  String toString() {
    return 'V12Rayon[id=$id, description=$description, languageId=$languageId, ]';
  }

  V12Rayon.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
    languageId = json['languageId'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'description': description, 'languageId': languageId};
  }

  static List<V12Rayon> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V12Rayon>()
        : json.map((value) => new V12Rayon.fromJson(value)).toList();
  }

  static Map<String, V12Rayon> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V12Rayon>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V12Rayon.fromJson(value));
    }
    return map;
  }
}
