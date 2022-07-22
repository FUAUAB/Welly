part of swagger.api;

class V12Package {
  /* Id for package unit */
  int unitId = null;

/* Id for language */
  int languageId = null;

/* Package description */
  String description = null;

  V12Package();

  @override
  String toString() {
    return 'V12Package[unitId=$unitId, languageId=$languageId, description=$description, ]';
  }

  V12Package.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    unitId = json['unitId'];
    languageId = json['languageId'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'unitId': unitId,
      'languageId': languageId,
      'description': description
    };
  }

  static List<V12Package> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V12Package>()
        : json.map((value) => new V12Package.fromJson(value)).toList();
  }

  static Map<String, V12Package> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V12Package>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V12Package.fromJson(value));
    }
    return map;
  }
}
