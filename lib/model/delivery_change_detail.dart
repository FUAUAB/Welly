part of swagger.api;

class DeliveryChangeDetail {
  /* OrderDetailId as created by the ERP */
  int id = null;

/* OrderDetailId as created by the ERP */
  int storeDetailId = null;

/* ERP ProductID */
  String productId = null;

/* Delivered quantity */
  double deliveredQuantity = null;

/* Remaining quantity */
  double remainingQuantity = null;

  DeliveryChangeDetail();

  @override
  String toString() {
    return 'DeliveryChangeDetail[id=$id, storeDetailId=$storeDetailId, productId=$productId, deliveredQuantity=$deliveredQuantity, remainingQuantity=$remainingQuantity, ]';
  }

  DeliveryChangeDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    storeDetailId = json['storeDetailId'];
    productId = json['productId'];
    deliveredQuantity = json['deliveredQuantity'] == null
        ? null
        : json['deliveredQuantity'].toDouble();
    remainingQuantity = json['remainingQuantity'] == null
        ? null
        : json['remainingQuantity'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'storeDetailId': storeDetailId,
      'productId': productId,
      'deliveredQuantity': deliveredQuantity,
      'remainingQuantity': remainingQuantity
    };
  }

  static List<DeliveryChangeDetail> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<DeliveryChangeDetail>()
        : json
            .map((value) => new DeliveryChangeDetail.fromJson(value))
            .toList();
  }

  static Map<String, DeliveryChangeDetail> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeliveryChangeDetail>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new DeliveryChangeDetail.fromJson(value));
    }
    return map;
  }
}
