part of swagger.api;

class CustomerProductReferenceRequest {
  /* Customer ID, as retrievable from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a> */
  int customerId = null;

/* Product ID, as retrievable from <a href=\"?deepLinking=true#/Product/Get\">/api/Product</a> */
  String productId = null;

/* Customer product ID, as retreivable from <a href=\"?deepLinking=true#/Product/CustomerProductReference/{customerId}\">/api/Product/CustomerProductReference/{customerId}</a> */
  String customerProductId = null;

/* Description for customer product */
  String customerProductDescription = null;

  CustomerProductReferenceRequest();

  @override
  String toString() {
    return 'CustomerProductReferenceRequest[customerId=$customerId, productId=$productId, customerProductId=$customerProductId, customerProductDescription=$customerProductDescription, ]';
  }

  CustomerProductReferenceRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    customerId = json['customerId'];
    productId = json['productId'];
    customerProductId = json['customerProductId'];
    customerProductDescription = json['customerProductDescription'];
  }

  Map<String, dynamic> toJson() {
    return {
      'customerId': customerId,
      'productId': productId,
      'customerProductId': customerProductId,
      'customerProductDescription': customerProductDescription
    };
  }

  static List<CustomerProductReferenceRequest> listFromJson(
      List<dynamic> json) {
    return json == null
        ? new List<CustomerProductReferenceRequest>()
        : json
            .map((value) => new CustomerProductReferenceRequest.fromJson(value))
            .toList();
  }

  static Map<String, CustomerProductReferenceRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CustomerProductReferenceRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CustomerProductReferenceRequest.fromJson(value));
    }
    return map;
  }
}
