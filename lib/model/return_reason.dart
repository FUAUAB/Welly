part of swagger.api;

class ReturnReason {
  int id = null;

  String description = null;

  ReturnReason();

  @override
  String toString() {
    return 'ReturnReason[id=$id, description=$description, ]';
  }

  ReturnReason.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'description': description};
  }

  static List<ReturnReason> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ReturnReason>()
        : json.map((value) => new ReturnReason.fromJson(value)).toList();
  }

  static Map<String, ReturnReason> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReturnReason>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ReturnReason.fromJson(value));
    }
    return map;
  }
}
