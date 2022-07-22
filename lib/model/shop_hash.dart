part of swagger.api;

class ShopHash {
  /* ID of hashed object */
  int id = null;

/* Value of hash */
  String dataHash = null;

  ShopHash();

  @override
  String toString() {
    return 'ShopHash[id=$id, dataHash=$dataHash, ]';
  }

  ShopHash.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    dataHash = json['dataHash'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'dataHash': dataHash};
  }

  static List<ShopHash> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ShopHash>()
        : json.map((value) => new ShopHash.fromJson(value)).toList();
  }

  static Map<String, ShopHash> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ShopHash>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ShopHash.fromJson(value));
    }
    return map;
  }
}
