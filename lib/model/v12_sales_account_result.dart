part of swagger.api;

class V12SalesAccountResult {
  /* Returned Customer ID, as retrievable from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a> */
  int customerId = null;

/* Returned Employee ID, as retrievable from <a href=\"?deepLinking=true#/Employee/Get\">/api/Employee</a> */
  int employeeId = null;

/* Returned Shipping address ID, as retrievable from <a href=\"?deepLinking=true#/Shipping/Get\">/api/Shipping</a> */
  int shippingAddressId = null;

  V12SalesAccountResult();

  @override
  String toString() {
    return 'V12SalesAccountResult[customerId=$customerId, employeeId=$employeeId, shippingAddressId=$shippingAddressId, ]';
  }

  V12SalesAccountResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    customerId = json['customerId'];
    employeeId = json['employeeId'];
    shippingAddressId = json['shippingAddressId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'customerId': customerId,
      'employeeId': employeeId,
      'shippingAddressId': shippingAddressId
    };
  }

  static List<V12SalesAccountResult> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V12SalesAccountResult>()
        : json
            .map((value) => new V12SalesAccountResult.fromJson(value))
            .toList();
  }

  static Map<String, V12SalesAccountResult> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V12SalesAccountResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V12SalesAccountResult.fromJson(value));
    }
    return map;
  }
}
