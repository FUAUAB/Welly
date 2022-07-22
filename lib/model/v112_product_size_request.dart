part of swagger.api;

class V112ProductSizeRequest {
  /* Store ID where order is placed, as retrievable from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.5#/Webshop/Store\">/api/Webshop</a> */
  int storeId = null;

/* Customer ID as retrievable from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a> */
  int customerId = null;

/* Employee ID, as retrievable from <a href=\"?deepLinking=true#/Employee/GetCustomerEmployees\">/api/Employee</a> */
  int employeeId = null;

/* Product Group (parent) ID for product */
  String productGroupId = null;

/* Size id, as retrievable from <a href=\"?deepLinking=true#/ProductSelection/ProductSelectionWithSize\">/api/ProductSelection</a>. Null value will reset size for customer. */
  int sizeId = null;

/* Is size required for webshop user? */
  bool required = null;

  V112ProductSizeRequest();

  @override
  String toString() {
    return 'V112ProductSizeRequest[storeId=$storeId, customerId=$customerId, employeeId=$employeeId, productGroupId=$productGroupId, sizeId=$sizeId, required=$required, ]';
  }

  V112ProductSizeRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    storeId = json['storeId'];
    customerId = json['customerId'];
    employeeId = json['employeeId'];
    productGroupId = json['productGroupId'];
    sizeId = json['sizeId'];
    required = json['required'];
  }

  Map<String, dynamic> toJson() {
    return {
      'storeId': storeId,
      'customerId': customerId,
      'employeeId': employeeId,
      'productGroupId': productGroupId,
      'sizeId': sizeId,
      'required': required
    };
  }

  static List<V112ProductSizeRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V112ProductSizeRequest>()
        : json
            .map((value) => new V112ProductSizeRequest.fromJson(value))
            .toList();
  }

  static Map<String, V112ProductSizeRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V112ProductSizeRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V112ProductSizeRequest.fromJson(value));
    }
    return map;
  }
}
