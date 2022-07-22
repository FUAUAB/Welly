part of swagger.api;

class UmsBudgetDetail {
  /* Budget ID, as retrievable from <a href=\"?deepLinking=true#/Budget/GetBudgetsForCustomer\">/api/Budget</a> */
  int id = null;

/* Budget name */
  String description = null;

/* Budget limit amounts per category */
  List<UmsBudgetLineLimit> budgetLimits = [];

  UmsBudgetDetail();

  @override
  String toString() {
    return 'UmsBudgetDetail[id=$id, description=$description, budgetLimits=$budgetLimits, ]';
  }

  UmsBudgetDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
    budgetLimits = UmsBudgetLineLimit.listFromJson(json['budgetLimits']);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'description': description, 'budgetLimits': budgetLimits};
  }

  static List<UmsBudgetDetail> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UmsBudgetDetail>()
        : json.map((value) => new UmsBudgetDetail.fromJson(value)).toList();
  }

  static Map<String, UmsBudgetDetail> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UmsBudgetDetail>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UmsBudgetDetail.fromJson(value));
    }
    return map;
  }
}
