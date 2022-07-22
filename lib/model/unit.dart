part of swagger.api;

class Unit {
  /* Unit id */
  int id = null;

/* Unit description */
  String description = null;

  Unit();

  @override
  String toString() {
    return 'Unit[id=$id, description=$description, ]';
  }

  Unit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'description': description};
  }

  static List<Unit> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Unit>()
        : json.map((value) => new Unit.fromJson(value)).toList();
  }

  static Map<String, Unit> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Unit>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Unit.fromJson(value));
    }
    return map;
  }
}
