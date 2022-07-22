part of swagger.api;

class CategorySimple {
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

/* Name of category */
  String name = null;

/* List of product Ids that are included in this level */
  List<String> products = [];

  CategorySimple();

  @override
  String toString() {
    return 'CategorySimple[level1=$level1, level2=$level2, level3=$level3, level4=$level4, level5=$level5, name=$name, products=$products, ]';
  }

  CategorySimple.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    level1 = json['level1'];
    level2 = json['level2'];
    level3 = json['level3'];
    level4 = json['level4'];
    level5 = json['level5'];
    name = json['name'];
    products =
        (json['products'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'level1': level1,
      'level2': level2,
      'level3': level3,
      'level4': level4,
      'level5': level5,
      'name': name,
      'products': products
    };
  }

  static List<CategorySimple> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CategorySimple>()
        : json.map((value) => new CategorySimple.fromJson(value)).toList();
  }

  static Map<String, CategorySimple> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CategorySimple>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CategorySimple.fromJson(value));
    }
    return map;
  }
}
