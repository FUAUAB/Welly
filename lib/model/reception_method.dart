part of swagger.api;

class ReceptionMethod {
  /* Reception method ID, as retrievable from <a href=\"?deepLinking=true#/Webshop/ReceptionMethod\">/api/Webshop</a> */
  int id = null;

/* Description of reception method */
  String description = null;

  ReceptionMethod();

  @override
  String toString() {
    return 'ReceptionMethod[id=$id, description=$description, ]';
  }

  ReceptionMethod.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'description': description};
  }

  static List<ReceptionMethod> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ReceptionMethod>()
        : json.map((value) => new ReceptionMethod.fromJson(value)).toList();
  }

  static Map<String, ReceptionMethod> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReceptionMethod>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ReceptionMethod.fromJson(value));
    }
    return map;
  }
}
