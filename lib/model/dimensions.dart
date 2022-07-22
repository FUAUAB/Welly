part of swagger.api;

class Dimensions {
  /* Length in mm */
  double length = null;

/* Width in mm */
  double width = null;

/* Height in mm */
  double height = null;

/* Weight in gram */
  double weight = null;

  Dimensions();

  @override
  String toString() {
    return 'Dimensions[length=$length, width=$width, height=$height, weight=$weight, ]';
  }

  Dimensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    length = json['length'] == null ? null : json['length'].toDouble();
    width = json['width'] == null ? null : json['width'].toDouble();
    height = json['height'] == null ? null : json['height'].toDouble();
    weight = json['weight'] == null ? null : json['weight'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {
      'length': length,
      'width': width,
      'height': height,
      'weight': weight
    };
  }

  static List<Dimensions> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Dimensions>()
        : json.map((value) => new Dimensions.fromJson(value)).toList();
  }

  static Map<String, Dimensions> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Dimensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Dimensions.fromJson(value));
    }
    return map;
  }
}
