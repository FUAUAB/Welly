part of swagger.api;

class BudgetUsageDetail {
  /* Budget Id */
  int budgetId = null;

/* Description for usage */
  String description = null;

/* Budget amount (can be quantity or currency value) */
  double budget = null;

/* Amount already used from budget */
  double used = null;

/* Remaining amount form budget */
  double remaining = null;

/* Path of category */
  String categoryPath = null;

/* Amount in shopping cart */
  double inShoppingCart = null;

/* CategoryIds for category */
  Level categoryIds = null;

  BudgetUsageDetail();

  @override
  String toString() {
    return 'BudgetUsageDetail[budgetId=$budgetId, description=$description, budget=$budget, used=$used, remaining=$remaining, categoryPath=$categoryPath, inShoppingCart=$inShoppingCart, categoryIds=$categoryIds, ]';
  }

  BudgetUsageDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    budgetId = json['budgetId'];
    description = json['description'];
    budget = json['budget'] == null ? null : json['budget'].toDouble();
    used = json['used'] == null ? null : json['used'].toDouble();
    remaining = json['remaining'] == null ? null : json['remaining'].toDouble();
    categoryPath = json['categoryPath'];
    inShoppingCart = json['inShoppingCart'] == null
        ? null
        : json['inShoppingCart'].toDouble();
    categoryIds = new Level.fromJson(json['categoryIds']);
  }

  Map<String, dynamic> toJson() {
    return {
      'budgetId': budgetId,
      'description': description,
      'budget': budget,
      'used': used,
      'remaining': remaining,
      'categoryPath': categoryPath,
      'inShoppingCart': inShoppingCart,
      'categoryIds': categoryIds
    };
  }

  static List<BudgetUsageDetail> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<BudgetUsageDetail>()
        : json.map((value) => new BudgetUsageDetail.fromJson(value)).toList();
  }

  static Map<String, BudgetUsageDetail> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BudgetUsageDetail>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new BudgetUsageDetail.fromJson(value));
    }
    return map;
  }
}
