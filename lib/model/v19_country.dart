part of swagger.api;

class V19Country {
  /* Country ID in ERP, as retrievable from <a href=\"?deepLinking=true#/Country/GetAllCountries\">/api/Country</a> */
  int id = null;

/* Country name */
  String name = null;

/* ISO identification for country */
  String isO3166 = null;

  V19Country();

  @override
  String toString() {
    return 'V19Country[id=$id, name=$name, isO3166=$isO3166, ]';
  }

  V19Country.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    isO3166 = json['isO3166'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'isO3166': isO3166};
  }

  static List<V19Country> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V19Country>()
        : json.map((value) => new V19Country.fromJson(value)).toList();
  }

  static Map<String, V19Country> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V19Country>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V19Country.fromJson(value));
    }
    return map;
  }
}
