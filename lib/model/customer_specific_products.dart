part of swagger.api;

class CustomerSpecificProducts {
  /* Customer ID, as retrievable from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a> */
  int customerId = null;

/* Customer name */
  String name = null;

/* List of specific products for customer */
  List<SpecificProduct> products = [];

  CustomerSpecificProducts();

  @override
  String toString() {
    return 'CustomerSpecificProducts[customerId=$customerId, name=$name, products=$products, ]';
  }

  CustomerSpecificProducts.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    customerId = json['customerId'];
    name = json['name'];
    products = SpecificProduct.listFromJson(json['products']);
  }

  Map<String, dynamic> toJson() {
    return {'customerId': customerId, 'name': name, 'products': products};
  }

  static List<CustomerSpecificProducts> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CustomerSpecificProducts>()
        : json
            .map((value) => new CustomerSpecificProducts.fromJson(value))
            .toList();
  }

  static Map<String, CustomerSpecificProducts> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CustomerSpecificProducts>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CustomerSpecificProducts.fromJson(value));
    }
    return map;
  }
}
