part of swagger.api;

class V111BudgetOverview {
  /* Id of budget, as retrievable from <a href=\"?deepLinking=true#/Budget/GetBudgetsForCustomer\">/api/Budget</a> */
  int id = null;

/* Startdate of budget */
  DateTime startDate = null;

/* End date for budget */
  DateTime endDate = null;

/* Type of budget (0 = Amount (in currency), 1 = Quantity) */
  int budgetType = null;
  //enum budgetTypeEnum {  Amount,  Quantity,  };
/* Main budget usage information */
  BudgetUsageDetail mainUsage = null;

/* Budget usage for underlying categories in customer's product selection */
  List<BudgetUsageDetail> categoryUsage = [];

  V111BudgetOverview();

  @override
  String toString() {
    return 'V111BudgetOverview[id=$id, startDate=$startDate, endDate=$endDate, budgetType=$budgetType, mainUsage=$mainUsage, categoryUsage=$categoryUsage, ]';
  }

  V111BudgetOverview.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    startDate = new DateTime(json['startDate']);
    endDate = new DateTime(json['endDate']);
    budgetType = json['budgetType'];
    mainUsage = new BudgetUsageDetail.fromJson(json['mainUsage']);
    categoryUsage = BudgetUsageDetail.listFromJson(json['categoryUsage']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'startDate': startDate,
      'endDate': endDate,
      'budgetType': budgetType,
      'mainUsage': mainUsage,
      'categoryUsage': categoryUsage
    };
  }

  static List<V111BudgetOverview> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V111BudgetOverview>()
        : json.map((value) => new V111BudgetOverview.fromJson(value)).toList();
  }

  static Map<String, V111BudgetOverview> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V111BudgetOverview>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V111BudgetOverview.fromJson(value));
    }
    return map;
  }
}
