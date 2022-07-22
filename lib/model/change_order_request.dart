part of swagger.api;

class ChangeOrderRequest {
  /* Company ID, as retrievable from <a href=\"?deepLinking=true#/Company/GetAllCompanies\">/api/Company</a> */
  int companyId = null;

/* Branch ID. as retrievable from <a href=\"?deepLinking=true#/Branch/GetAllBranches\">/api/Branch</a> */
  int branchId = null;

/* Order ID, as retrievable from <a href=\"?deepLinking=true#/Order\">/api/Order</a> */
  int orderId = null;

/* Order should be delivered in full. */
  bool deliveryInFull = null;

/* Underlying OrderLines that should be modified */
  List<OrderLineRequest> orderLines = [];

  ChangeOrderRequest();

  @override
  String toString() {
    return 'ChangeOrderRequest[companyId=$companyId, branchId=$branchId, orderId=$orderId, deliveryInFull=$deliveryInFull, orderLines=$orderLines, ]';
  }

  ChangeOrderRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    branchId = json['branchId'];
    orderId = json['orderId'];
    deliveryInFull = json['deliveryInFull'];
    orderLines = OrderLineRequest.listFromJson(json['orderLines']);
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'branchId': branchId,
      'orderId': orderId,
      'deliveryInFull': deliveryInFull,
      'orderLines': orderLines
    };
  }

  static List<ChangeOrderRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ChangeOrderRequest>()
        : json.map((value) => new ChangeOrderRequest.fromJson(value)).toList();
  }

  static Map<String, ChangeOrderRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ChangeOrderRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ChangeOrderRequest.fromJson(value));
    }
    return map;
  }
}
