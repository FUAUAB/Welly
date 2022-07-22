part of swagger.api;

class ProductDeliveryDays {
  /* Product SKU */
  String productId = null;

/* Estimated number of days to deliver the product when it is out of stock. */
  int deliveryDays = null;

/* Type of estimation for estimated delivery days */
  int estimatedBy = null;
  //enum estimatedByEnum {  System,  ManuallyChanged,  ManuallyConfirmed,  EdiConfirmation,  };
  ProductDeliveryDays();

  @override
  String toString() {
    return 'ProductDeliveryDays[productId=$productId, deliveryDays=$deliveryDays, estimatedBy=$estimatedBy, ]';
  }

  ProductDeliveryDays.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productId = json['productId'];
    deliveryDays = json['deliveryDays'];
    estimatedBy = json['estimatedBy'];
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'deliveryDays': deliveryDays,
      'estimatedBy': estimatedBy
    };
  }

  static List<ProductDeliveryDays> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ProductDeliveryDays>()
        : json.map((value) => new ProductDeliveryDays.fromJson(value)).toList();
  }

  static Map<String, ProductDeliveryDays> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductDeliveryDays>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ProductDeliveryDays.fromJson(value));
    }
    return map;
  }
}
