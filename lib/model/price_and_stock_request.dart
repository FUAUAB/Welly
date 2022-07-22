part of swagger.api;

class PriceAndStockRequest {
  /* Store ID, as retrievable from <a href=\"?deepLinking=true#/Webshop/Get\">/api/Webshop</a> */
  int storeId = null;

/* Company ID, as retrievable from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a> */
  int companyId = null;

/* Branch ID, as retrievable from <a href=\"?deepLinking=true#/Branch/Get\">/api/Branch</a> */
  int branchId = null;

/* Customer ID, as retrievable from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a> */
  int customerId = null;

/* Employee ID, as retrievable from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a> */
  int employeeId = null;

/* List of product IDs, as retrievable from <a href=\"?deepLinking=true#/CustomerEmployee/Get\">/api/Product</a> */
  List<String> productIds = [];

/* List of quantities for product IDs in request */
  List<double> quantities = [];

/* List of attrributes for product */
  List<String> attributes = [];

  PriceAndStockRequest();

  @override
  String toString() {
    return 'PriceAndStockRequest[storeId=$storeId, companyId=$companyId, branchId=$branchId, customerId=$customerId, employeeId=$employeeId, productIds=$productIds, quantities=$quantities, attributes=$attributes, ]';
  }

  PriceAndStockRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    storeId = json['storeId'];
    companyId = json['companyId'];
    branchId = json['branchId'];
    customerId = json['customerId'];
    employeeId = json['employeeId'];
    productIds =
        (json['productIds'] as List).map((item) => item as String).toList();
    quantities =
        (json['quantities'] as List).map((item) => item as double).toList();
    attributes =
        (json['attributes'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'storeId': storeId,
      'companyId': companyId,
      'branchId': branchId,
      'customerId': customerId,
      'employeeId': employeeId,
      'productIds': productIds,
      'quantities': quantities,
      'attributes': attributes
    };
  }

  static List<PriceAndStockRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<PriceAndStockRequest>()
        : json
            .map((value) => new PriceAndStockRequest.fromJson(value))
            .toList();
  }

  static Map<String, PriceAndStockRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PriceAndStockRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PriceAndStockRequest.fromJson(value));
    }
    return map;
  }
}
