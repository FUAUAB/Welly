part of swagger.api;

class Budget {
  /* Id of budget, as retrievable from <a href=\"?deepLinking=true#/Budget/GetBudgetsForCustomer\">/api/Budget</a> */
  int id = null;

/* Name of budget */
  String name = null;

/* Number of terms during which budget is applicable */
  int budgetTerms = null;

/* Type of term (0 = Day, 1 = Week, 2 = Month, 3 = Year) */
  int budgetTermType = null;

  //enum budgetTermTypeEnum {  Day,  Week,  Month,  Year,  };
/* Type of budget (0 = Amount (in currency), 1 = Quantity) */
  int budgetType = null;

  //enum budgetTypeEnum {  Amount,  Quantity,  };
/* Type of user (User, Authorizer) */
  int budgetUserType = null;

  //enum budgetUserTypeEnum {  User,  Authorizer,  };
/* Date from which budget will be effective */
  DateTime effectiveDate = null;

/* Type (Budget, User) for determining end date of Budget. Budget implicates end date is based on effective date of budget, User implicates  end date is based on start date of budget for user */
  int budgetDateType = null;

  //enum budgetDateTypeEnum {  Budget,  User,  };
/* Budget has a maximum above which user cannot place an order. */
  bool hasLimit = null;

/* Maximum amount or quantity a user can order with this budget. */
  double limit = null;

/* User can order above limit for this budget (if so, authorization is required) */
  bool canOrderAboveLimit = null;

/* All orders require authorization */
  bool alwaysAuthorizeOrders = null;

/* A maximum amount / quantity per order is applicable for this budget */
  bool hasMaximumOrderAmount = null;

/* Maximum amount / quantity per order */
  double maximumOrderAmount = null;

/* Budget will be renewed after expiration */
  bool repeatingBudget = null;

/* Budget will be renewed until set date */
  DateTime repeatUntil = null;

/* Unused budget will be transfered to following period */
  bool takeUnspentBudgetToNextPeriod = null;

/* Maximum amount / quantity that can be transfered to following period */
  double maximumUnspentBudget = null;

/* Budget is default budget for customer */
  bool default_ = null;

  Budget();

  @override
  String toString() {
    return 'Budget[id=$id, name=$name, budgetTerms=$budgetTerms, budgetTermType=$budgetTermType, budgetType=$budgetType, budgetUserType=$budgetUserType, effectiveDate=$effectiveDate, budgetDateType=$budgetDateType, hasLimit=$hasLimit, limit=$limit, canOrderAboveLimit=$canOrderAboveLimit, alwaysAuthorizeOrders=$alwaysAuthorizeOrders, hasMaximumOrderAmount=$hasMaximumOrderAmount, maximumOrderAmount=$maximumOrderAmount, repeatingBudget=$repeatingBudget, repeatUntil=$repeatUntil, takeUnspentBudgetToNextPeriod=$takeUnspentBudgetToNextPeriod, maximumUnspentBudget=$maximumUnspentBudget, default_=$default_, ]';
  }

  Budget.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    budgetTerms = json['budgetTerms'];
    budgetTermType = json['budgetTermType'];
    budgetType = json['budgetType'];
    budgetUserType = json['budgetUserType'];
    effectiveDate = new DateTime(json['effectiveDate']);
    budgetDateType = json['budgetDateType'];
    hasLimit = json['hasLimit'];
    limit = json['limit'] == null ? null : json['limit'].toDouble();
    canOrderAboveLimit = json['canOrderAboveLimit'];
    alwaysAuthorizeOrders = json['alwaysAuthorizeOrders'];
    hasMaximumOrderAmount = json['hasMaximumOrderAmount'];
    maximumOrderAmount = json['maximumOrderAmount'] == null
        ? null
        : json['maximumOrderAmount'].toDouble();
    repeatingBudget = json['repeatingBudget'];
    repeatUntil = new DateTime(json['repeatUntil']);
    takeUnspentBudgetToNextPeriod = json['takeUnspentBudgetToNextPeriod'];
    maximumUnspentBudget = json['maximumUnspentBudget'] == null
        ? null
        : json['maximumUnspentBudget'].toDouble();
    default_ = json['default'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'budgetTerms': budgetTerms,
      'budgetTermType': budgetTermType,
      'budgetType': budgetType,
      'budgetUserType': budgetUserType,
      'effectiveDate': effectiveDate,
      'budgetDateType': budgetDateType,
      'hasLimit': hasLimit,
      'limit': limit,
      'canOrderAboveLimit': canOrderAboveLimit,
      'alwaysAuthorizeOrders': alwaysAuthorizeOrders,
      'hasMaximumOrderAmount': hasMaximumOrderAmount,
      'maximumOrderAmount': maximumOrderAmount,
      'repeatingBudget': repeatingBudget,
      'repeatUntil': repeatUntil,
      'takeUnspentBudgetToNextPeriod': takeUnspentBudgetToNextPeriod,
      'maximumUnspentBudget': maximumUnspentBudget,
      'default': default_
    };
  }

  static List<Budget> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Budget>()
        : json.map((value) => new Budget.fromJson(value)).toList();
  }

  static Map<String, Budget> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Budget>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Budget.fromJson(value));
    }
    return map;
  }
}
