part of swagger.api;

class OrderLineRequest {
  /* Order line ID, as retrievable from <a href=\"?deepLinking=true#/Order\">/api/Order</a> */
  int orderLineId = null;

/* Product ID, as retrievable from <a href=\"?deepLinking=true#/Product/ShopProductInformation\">/api/Product</a> */
  String productId = null;

/* Required change in order line (0 = No Change, 1 = Deliver available products and cancel remaining, 2 = Cancel order line) */
  String mutation = null;
  //enum mutationEnum {  NoChange,  DeliverAvailableCancelRemaining,  Cancel,  };
  OrderLineRequest();

  @override
  String toString() {
    return 'OrderLineRequest[orderLineId=$orderLineId, productId=$productId, mutation=$mutation, ]';
  }

  OrderLineRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    orderLineId = json['orderLineId'];
    productId = json['productId'];
    mutation = json['mutation'];
  }

  Map<String, dynamic> toJson() {
    return {
      'orderLineId': orderLineId,
      'productId': productId,
      'mutation': mutation
    };
  }

  static List<OrderLineRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<OrderLineRequest>()
        : json.map((value) => new OrderLineRequest.fromJson(value)).toList();
  }

  static Map<String, OrderLineRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrderLineRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new OrderLineRequest.fromJson(value));
    }
    return map;
  }
}
