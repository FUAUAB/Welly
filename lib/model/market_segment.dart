part of swagger.api;

class MarketSegment {
  int id = null;

  String name = null;

  MarketSegment();

  @override
  String toString() {
    return 'MarketSegment[id=$id, name=$name, ]';
  }

  MarketSegment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name};
  }

  static List<MarketSegment> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<MarketSegment>()
        : json.map((value) => new MarketSegment.fromJson(value)).toList();
  }

  static Map<String, MarketSegment> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MarketSegment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new MarketSegment.fromJson(value));
    }
    return map;
  }
}
