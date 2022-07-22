part of swagger.api;

class UmsModelsBudgetUsage {
  /* Id of budget, as retrievable from <a href=\"?deepLinking=true#/Budget/GetBudgetsForCustomer\">/api/Budget</a> */
  int id = null;

/* Start date of budget */
  DateTime startDate = null;

/* End date of budget */
  DateTime endDate = null;

/* Type of budget (0 = Amount (in currency), 1 = Quantity) */
  int budgetType = null;
  //enum budgetTypeEnum {  Amount,  Quantity,  };
/* Budget is default budget for customer */
  double defaultBudget = null;

/* Budget amount / quantity */
  double budget = null;

/* Used amount / quantity */
  double used = null;

/* Remaining amount / quantity in budget */
  double remaining = null;

/* Unused Amount quantity from previous budget */
  double takenFromPreviousPeriod = null;

/* Reason for change in budget */
  String reasonForChange = null;

/* Budget is active */
  bool active = null;

/* Budget can be edited */
  bool editable = null;

/* Budget name */
  String name = null;

  UmsModelsBudgetUsage();

  @override
  String toString() {
    return 'UmsModelsBudgetUsage[id=$id, startDate=$startDate, endDate=$endDate, budgetType=$budgetType, defaultBudget=$defaultBudget, budget=$budget, used=$used, remaining=$remaining, takenFromPreviousPeriod=$takenFromPreviousPeriod, reasonForChange=$reasonForChange, active=$active, editable=$editable, name=$name, ]';
  }

  UmsModelsBudgetUsage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    startDate = new DateTime(json['startDate']);
    endDate = new DateTime(json['endDate']);
    budgetType = json['budgetType'];
    defaultBudget =
        json['defaultBudget'] == null ? null : json['defaultBudget'].toDouble();
    budget = json['budget'] == null ? null : json['budget'].toDouble();
    used = json['used'] == null ? null : json['used'].toDouble();
    remaining = json['remaining'] == null ? null : json['remaining'].toDouble();
    takenFromPreviousPeriod = json['takenFromPreviousPeriod'] == null
        ? null
        : json['takenFromPreviousPeriod'].toDouble();
    reasonForChange = json['reasonForChange'];
    active = json['active'];
    editable = json['editable'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'startDate': startDate,
      'endDate': endDate,
      'budgetType': budgetType,
      'defaultBudget': defaultBudget,
      'budget': budget,
      'used': used,
      'remaining': remaining,
      'takenFromPreviousPeriod': takenFromPreviousPeriod,
      'reasonForChange': reasonForChange,
      'active': active,
      'editable': editable,
      'name': name
    };
  }

  static List<UmsModelsBudgetUsage> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UmsModelsBudgetUsage>()
        : json
            .map((value) => new UmsModelsBudgetUsage.fromJson(value))
            .toList();
  }

  static Map<String, UmsModelsBudgetUsage> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UmsModelsBudgetUsage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UmsModelsBudgetUsage.fromJson(value));
    }
    return map;
  }
}
