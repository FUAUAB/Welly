part of swagger.api;

class Special {
  /* Item description, first line */
  String description1 = null;

/* Item description, second line */
  String description2 = null;

/* Item description, third line */
  String description3 = null;

/* Item description, fourth line */
  String description4 = null;

/* Item description, fifth line */
  String description5 = null;

/* Order quantity */
  double quantity = null;

  Special();

  @override
  String toString() {
    return 'Special[description1=$description1, description2=$description2, description3=$description3, description4=$description4, description5=$description5, quantity=$quantity, ]';
  }

  Special.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    description1 = json['description1'];
    description2 = json['description2'];
    description3 = json['description3'];
    description4 = json['description4'];
    description5 = json['description5'];
    quantity = json['quantity'] == null ? null : json['quantity'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {
      'description1': description1,
      'description2': description2,
      'description3': description3,
      'description4': description4,
      'description5': description5,
      'quantity': quantity
    };
  }

  static List<Special> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Special>()
        : json.map((value) => new Special.fromJson(value)).toList();
  }

  static Map<String, Special> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Special>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Special.fromJson(value));
    }
    return map;
  }
}
