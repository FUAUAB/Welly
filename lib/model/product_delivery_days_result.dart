part of swagger.api;

class ProductDeliveryDaysResult {
  /* List of delivery days per product */
  List<ProductDeliveryDays> deliverydays = [];

  ProductDeliveryDaysResult();

  @override
  String toString() {
    return 'ProductDeliveryDaysResult[deliverydays=$deliverydays, ]';
  }

  ProductDeliveryDaysResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    deliverydays = ProductDeliveryDays.listFromJson(json['deliverydays']);
  }

  Map<String, dynamic> toJson() {
    return {'deliverydays': deliverydays};
  }

  static List<ProductDeliveryDaysResult> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ProductDeliveryDaysResult>()
        : json
            .map((value) => new ProductDeliveryDaysResult.fromJson(value))
            .toList();
  }

  static Map<String, ProductDeliveryDaysResult> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductDeliveryDaysResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ProductDeliveryDaysResult.fromJson(value));
    }
    return map;
  }
}
