part of swagger.api;

class ShippingCostRequest {
  /* CompanyId as received from <a href=\"?filter=Company\">/api/Company</a> */
  int companyId = null;

/* BranchId as received from <a href=\"?filter=Branch\">/api/Branch</a> */
  int branchId = null;

/* CustomerId as received from <a href=\"?filter=Customer\">/api/Customer</a> */
  int customerId = null;

/* ShippingMethodId as received from <a href=\"?filter=Shipping\">/api/Shipping/Methods</a>  Optional: if not specified, customers default shippingmethod will be used. */
  int shippingMethodId = null;

/* Specify the requested dilivery date */
  DateTime deliveryDate = null;

/* Products and quantities to calculate shipping costs for */
  List<ProductQuantity> products = [];

  ShippingCostRequest();

  @override
  String toString() {
    return 'ShippingCostRequest[companyId=$companyId, branchId=$branchId, customerId=$customerId, shippingMethodId=$shippingMethodId, deliveryDate=$deliveryDate, products=$products, ]';
  }

  ShippingCostRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    branchId = json['branchId'];
    customerId = json['customerId'];
    shippingMethodId = json['shippingMethodId'];
    deliveryDate = json['deliveryDate'] == null
        ? null
        : DateTime.parse(json['deliveryDate']);
    products = ProductQuantity.listFromJson(json['products']);
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'branchId': branchId,
      'customerId': customerId,
      'shippingMethodId': shippingMethodId,
      'deliveryDate':
          deliveryDate == null ? '' : deliveryDate.toIso8601String(),
      'products': products
    };
  }

  static List<ShippingCostRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ShippingCostRequest>()
        : json.map((value) => new ShippingCostRequest.fromJson(value)).toList();
  }

  static Map<String, ShippingCostRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ShippingCostRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ShippingCostRequest.fromJson(value));
    }
    return map;
  }
}
