part of swagger.api;

class Representative {
  /* Employee ID for representative, as retrievable from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Employee/Get\">/api/Employee</a> */
  int id = null;

/* Name of representative */
  String name = null;

  Representative();

  @override
  String toString() {
    return 'Representative[id=$id, name=$name, ]';
  }

  Representative.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name};
  }

  static List<Representative> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Representative>()
        : json.map((value) => new Representative.fromJson(value)).toList();
  }

  static Map<String, Representative> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Representative>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Representative.fromJson(value));
    }
    return map;
  }
}
