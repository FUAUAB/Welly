part of swagger.api;

class CustomerProductReference {
  /* Customer ID, as retrievable from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a> */
  int customerId = null;

/* Product ID, as retrievable from <a href=\"?deepLinking=true#/Product/Get\">/api/Product</a> */
  String productId = null;

/* Product descriptiom */
  String description = null;

/* Customer product ID, as retreivable from <a href=\"?deepLinking=true#/Product/CustomerProductReference/{customerId}\">/api/Product/CustomerProductReference/{customerId}</a> */
  String customerProductId = null;

/* Description for customer product */
  String customerProductDescription = null;

  CustomerProductReference();

  @override
  String toString() {
    return 'CustomerProductReference[customerId=$customerId, productId=$productId, description=$description, customerProductId=$customerProductId, customerProductDescription=$customerProductDescription, ]';
  }

  CustomerProductReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    customerId = json['customerId'];
    productId = json['productId'];
    description = json['description'];
    customerProductId = json['customerProductId'];
    customerProductDescription = json['customerProductDescription'];
  }

  Map<String, dynamic> toJson() {
    return {
      'customerId': customerId,
      'productId': productId,
      'description': description,
      'customerProductId': customerProductId,
      'customerProductDescription': customerProductDescription
    };
  }

  static List<CustomerProductReference> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CustomerProductReference>()
        : json
            .map((value) => new CustomerProductReference.fromJson(value))
            .toList();
  }

  static Map<String, CustomerProductReference> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CustomerProductReference>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CustomerProductReference.fromJson(value));
    }
    return map;
  }
}
