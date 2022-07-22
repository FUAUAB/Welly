part of swagger.api;

class V12Role {
  /* Role Id, as retrievable from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Employee/Role/Get\">/api/Employee/Role</a> */
  int id = null;

/* Description of role */
  String description = null;

  V12Role();

  @override
  String toString() {
    return 'V12Role[id=$id, description=$description, ]';
  }

  V12Role.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'description': description};
  }

  static List<V12Role> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V12Role>()
        : json.map((value) => new V12Role.fromJson(value)).toList();
  }

  static Map<String, V12Role> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V12Role>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V12Role.fromJson(value));
    }
    return map;
  }
}
