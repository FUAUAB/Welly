part of swagger.api;

class StockChangeType {
  int id = null;

  String description = null;

  StockChangeType();

  @override
  String toString() {
    return 'StockChangeType[id=$id, description=$description, ]';
  }

  StockChangeType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'description': description};
  }

  static List<StockChangeType> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<StockChangeType>()
        : json.map((value) => new StockChangeType.fromJson(value)).toList();
  }

  static Map<String, StockChangeType> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StockChangeType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new StockChangeType.fromJson(value));
    }
    return map;
  }
}
