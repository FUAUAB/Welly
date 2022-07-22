part of swagger.api;

class WebUser {
  /* Employee ID, as retrievable from <a href=\"?deepLinking=true#/Employee/GetCustomerEmployees\">/api/Employee</a> */
  int id = null;

/* E-mail address */
  String email = null;

/* User name */
  String username = null;

/* UMS group where user is part of, as retrievable from <a href=\"?deepLinking=true#/WebUser/GroupsByCustomerId\">/api/Webuser</a> */
  UmsModelsUmsGroup group = null;

/* UMS sub group where user is part of, as retrievable from <a href=\"?deepLinking=true#/WebUser/SubGroups\">/api/Webuser</a> */
  UmsModelsUmsGroup subGroup = null;

/* Webshop user settings */
  UmsModelsUserSettings userSettings = null;

/* Webshop user budget history */
  List<UmsModelsBudgetUsage> budgetHistory = [];

/* Authorization settings */
  UmsModelsAuthorizationSettings authorizationSettings = null;

/* Basic employee data */
  UmsModelsEmployee employee = null;

/* CC emails for webshop user, separated by semicolon */
  String ccEmails = null;

/* Optional list of projects where webshop user's orders can be recorded */
  List<UmsModelsProjectV17> projects = [];

/* Optional shipping address where webshop user's orders can be send to */
  UmsModelsShippingAddressV17 shippingAddress = null;

/* List of product selections for webshop user, no product selection = full webshop product range */
  List<UmsModelsProductSelection> productSelections = [];

  WebUser();

  @override
  String toString() {
    return 'WebUser[id=$id, email=$email, username=$username, group=$group, subGroup=$subGroup, userSettings=$userSettings, budgetHistory=$budgetHistory, authorizationSettings=$authorizationSettings, employee=$employee, ccEmails=$ccEmails, projects=$projects, shippingAddress=$shippingAddress, productSelections=$productSelections, ]';
  }

  WebUser.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    email = json['email'];
    username = json['username'];
    group = new UmsModelsUmsGroup.fromJson(json['group']);
    subGroup = new UmsModelsUmsGroup.fromJson(json['subGroup']);
    userSettings = new UmsModelsUserSettings.fromJson(json['userSettings']);
    budgetHistory = UmsModelsBudgetUsage.listFromJson(json['budgetHistory']);
    authorizationSettings = new UmsModelsAuthorizationSettings.fromJson(
        json['authorizationSettings']);
    employee = new UmsModelsEmployee.fromJson(json['employee']);
    ccEmails = json['ccEmails'];
    projects = UmsModelsProjectV17.listFromJson(json['projects']);
    shippingAddress =
        new UmsModelsShippingAddressV17.fromJson(json['shippingAddress']);
    productSelections =
        UmsModelsProductSelection.listFromJson(json['productSelections']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'username': username,
      'group': group,
      'subGroup': subGroup,
      'userSettings': userSettings,
      'budgetHistory': budgetHistory,
      'authorizationSettings': authorizationSettings,
      'employee': employee,
      'ccEmails': ccEmails,
      'projects': projects,
      'shippingAddress': shippingAddress,
      'productSelections': productSelections
    };
  }

  static List<WebUser> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<WebUser>()
        : json.map((value) => new WebUser.fromJson(value)).toList();
  }

  static Map<String, WebUser> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebUser>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new WebUser.fromJson(value));
    }
    return map;
  }
}
