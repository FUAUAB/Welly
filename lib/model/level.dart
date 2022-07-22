part of swagger.api;

class Level {
  /* Level ID for height 1 */
  int level1 = null;

/* Level ID for height 2 */
  int level2 = null;

/* Level ID for height 3 */
  int level3 = null;

/* Level ID for height 4 */
  int level4 = null;

/* Level ID for height 5 */
  int level5 = null;

  Level();

  @override
  String toString() {
    return 'Level[level1=$level1, level2=$level2, level3=$level3, level4=$level4, level5=$level5, ]';
  }

  Level.fromJson(Map<String, dynamic> json) {
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

  static List<Level> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Level>()
        : json.map((value) => new Level.fromJson(value)).toList();
  }

  static Map<String, Level> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Level>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Level.fromJson(value));
    }
    return map;
  }
}
