part of swagger.api;

class V12SalesAccount {
  /* Account type in ERP: C = Customer, A = ShippingAddress, E=Employee */
  String accountType = null;

/* Customer account */
  V12Customer customer = null;

/* Employee account */
  V12CustomerEmployee employee = null;

/* Shipping address account */
  V12ShippingAddress shippingAddress = null;

  V12SalesAccount();

  @override
  String toString() {
    return 'V12SalesAccount[accountType=$accountType, customer=$customer, employee=$employee, shippingAddress=$shippingAddress, ]';
  }

  V12SalesAccount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    accountType = json['accountType'];
    customer = new V12Customer.fromJson(json['customer']);
    employee = new V12CustomerEmployee.fromJson(json['employee']);
    shippingAddress = new V12ShippingAddress.fromJson(json['shippingAddress']);
  }

  Map<String, dynamic> toJson() {
    return {
      'accountType': accountType,
      'customer': customer,
      'employee': employee,
      'shippingAddress': shippingAddress
    };
  }

  static List<V12SalesAccount> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V12SalesAccount>()
        : json.map((value) => new V12SalesAccount.fromJson(value)).toList();
  }

  static Map<String, V12SalesAccount> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V12SalesAccount>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V12SalesAccount.fromJson(value));
    }
    return map;
  }
}
