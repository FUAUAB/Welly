part of swagger.api;

class V12Title {
  /* Title ID, as retrievable from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Employee/Title/Get\">/api/Employee/Title</a> */
  int id = null;

/* Title name */
  String description = null;

  V12Title();

  @override
  String toString() {
    return 'V12Title[id=$id, description=$description, ]';
  }

  V12Title.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'description': description};
  }

  static List<V12Title> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V12Title>()
        : json.map((value) => new V12Title.fromJson(value)).toList();
  }

  static Map<String, V12Title> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V12Title>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V12Title.fromJson(value));
    }
    return map;
  }
}
