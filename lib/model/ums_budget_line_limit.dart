part of swagger.api;

class UmsBudgetLineLimit {
  /* Category ID for budget limit */
  int categoryId = null;

/* Position of category */
  int position = null;

/* Id of parent category */
  int parentId = null;

/* Limit amount */
  double limit = null;

  UmsBudgetLineLimit();

  @override
  String toString() {
    return 'UmsBudgetLineLimit[categoryId=$categoryId, position=$position, parentId=$parentId, limit=$limit, ]';
  }

  UmsBudgetLineLimit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    categoryId = json['categoryId'];
    position = json['position'];
    parentId = json['parentId'];
    limit = json['limit'] == null ? null : json['limit'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {
      'categoryId': categoryId,
      'position': position,
      'parentId': parentId,
      'limit': limit
    };
  }

  static List<UmsBudgetLineLimit> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UmsBudgetLineLimit>()
        : json.map((value) => new UmsBudgetLineLimit.fromJson(value)).toList();
  }

  static Map<String, UmsBudgetLineLimit> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UmsBudgetLineLimit>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UmsBudgetLineLimit.fromJson(value));
    }
    return map;
  }
}
