part of swagger.api;

class Levels {
  int level1 = null;

  int level2 = null;

  int level3 = null;

  int level4 = null;

  int level5 = null;

  Levels();

  @override
  String toString() {
    return 'Levels[level1=$level1, level2=$level2, level3=$level3, level4=$level4, level5=$level5, ]';
  }

  Levels.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    level1 = json['level1'];
    level2 = json['level2'];
    level3 = json['level3'];
    level4 = json['level4'];
    level5 = json['level5'];
  }

  Map<String, dynamic> toJson() {
    return {
      'level1': level1,
      'level2': level2,
      'level3': level3,
      'level4': level4,
      'level5': level5
    };
  }

  static List<Levels> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Levels>()
        : json.map((value) => new Levels.fromJson(value)).toList();
  }

  static Map<String, Levels> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Levels>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Levels.fromJson(value));
    }
    return map;
  }
}
