part of swagger.api;

class RepresentativeType {
  /* ID for representative type */
  int id = null;

/* Description of representative type */
  String type = null;

  RepresentativeType();

  @override
  String toString() {
    return 'RepresentativeType[id=$id, type=$type, ]';
  }

  RepresentativeType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'type': type};
  }

  static List<RepresentativeType> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<RepresentativeType>()
        : json.map((value) => new RepresentativeType.fromJson(value)).toList();
  }

  static Map<String, RepresentativeType> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RepresentativeType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new RepresentativeType.fromJson(value));
    }
    return map;
  }
}
