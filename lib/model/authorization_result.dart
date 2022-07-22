part of swagger.api;

class AuthorizationResult {
  /* Type of budget (0 = Amount (in currency), 1 = Quantity) */
  int budgetType = null;
  //enum budgetTypeEnum {  Amount,  Quantity,  };
/* Change in budget (depending on BudgetType, can be in amount or quantity) */
  double budgetChange = null;

  AuthorizationResult();

  @override
  String toString() {
    return 'AuthorizationResult[budgetType=$budgetType, budgetChange=$budgetChange, ]';
  }

  AuthorizationResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    budgetType = json['budgetType'];
    budgetChange =
        json['budgetChange'] == null ? null : json['budgetChange'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {'budgetType': budgetType, 'budgetChange': budgetChange};
  }

  static List<AuthorizationResult> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<AuthorizationResult>()
        : json.map((value) => new AuthorizationResult.fromJson(value)).toList();
  }

  static Map<String, AuthorizationResult> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AuthorizationResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new AuthorizationResult.fromJson(value));
    }
    return map;
  }
}
