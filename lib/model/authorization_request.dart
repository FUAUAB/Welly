part of swagger.api;

class AuthorizationRequest {
  /* Web order ID, as created by webshop */
  String webOrderId = null;

/* Store ID, as retrievable from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.5#/Webshop/Store\">/api/Webshop</a> */
  int storeId = null;

/* Customer ID, as retrievable from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a> */
  int customerId = null;

/* Employee ID, as retrievable from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.4#/Employee/GetCustomerEmployees\">/api/Employee</a> */
  int employeeId = null;

/* Customer ID for authorization of order, as retrievable from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a> */
  int authorizingCustomerId = null;

/* Employee ID of employee who will authorize the order, as retrievable from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.4#/Employee/GetCustomerEmployees\">/api/Employee</a> */
  int authorizingEmployeeId = null;

/* Product IDs in web order, as retrievable from <a href=\"?deepLinking=true#/Product/ShopProductInformation\">/api/Product</a> */
  List<String> productIds = [];

/* Quantities in web order */
  List<double> quantities = [];

  AuthorizationRequest();

  @override
  String toString() {
    return 'AuthorizationRequest[webOrderId=$webOrderId, storeId=$storeId, customerId=$customerId, employeeId=$employeeId, authorizingCustomerId=$authorizingCustomerId, authorizingEmployeeId=$authorizingEmployeeId, productIds=$productIds, quantities=$quantities, ]';
  }

  AuthorizationRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    webOrderId = json['webOrderId'];
    storeId = json['storeId'];
    customerId = json['customerId'];
    employeeId = json['employeeId'];
    authorizingCustomerId = json['authorizingCustomerId'];
    authorizingEmployeeId = json['authorizingEmployeeId'];
    productIds =
        (json['productIds'] as List).map((item) => item as String).toList();
    quantities =
        (json['quantities'] as List).map((item) => item as double).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'webOrderId': webOrderId,
      'storeId': storeId,
      'customerId': customerId,
      'employeeId': employeeId,
      'authorizingCustomerId': authorizingCustomerId,
      'authorizingEmployeeId': authorizingEmployeeId,
      'productIds': productIds,
      'quantities': quantities
    };
  }

  static List<AuthorizationRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<AuthorizationRequest>()
        : json
            .map((value) => new AuthorizationRequest.fromJson(value))
            .toList();
  }

  static Map<String, AuthorizationRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AuthorizationRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new AuthorizationRequest.fromJson(value));
    }
    return map;
  }
}
