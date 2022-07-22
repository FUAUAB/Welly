part of swagger.api;

class ReturnedItem {
  int companyId = null;

  int branchId = null;

  int orderId = null;

  int deliveryId = null;

  int deliveryLineId = null;

  int returnId = null;

  int returnLineId = null;

  int returnLineChildId = null;

  String productId = null;

  double quantityReturned = null;

  int companyOfReturnId = null;

  int branchOfReturnId = null;

  ReturnedItem();

  @override
  String toString() {
    return 'ReturnedItem[companyId=$companyId, branchId=$branchId, orderId=$orderId, deliveryId=$deliveryId, deliveryLineId=$deliveryLineId, returnId=$returnId, returnLineId=$returnLineId, returnLineChildId=$returnLineChildId, productId=$productId, quantityReturned=$quantityReturned, companyOfReturnId=$companyOfReturnId, branchOfReturnId=$branchOfReturnId, ]';
  }

  ReturnedItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    branchId = json['branchId'];
    orderId = json['orderId'];
    deliveryId = json['deliveryId'];
    deliveryLineId = json['deliveryLineId'];
    returnId = json['returnId'];
    returnLineId = json['returnLineId'];
    returnLineChildId = json['returnLineChildId'];
    productId = json['productId'];
    quantityReturned = json['quantityReturned'] == null
        ? null
        : json['quantityReturned'].toDouble();
    companyOfReturnId = json['companyOfReturnId'];
    branchOfReturnId = json['branchOfReturnId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'branchId': branchId,
      'orderId': orderId,
      'deliveryId': deliveryId,
      'deliveryLineId': deliveryLineId,
      'returnId': returnId,
      'returnLineId': returnLineId,
      'returnLineChildId': returnLineChildId,
      'productId': productId,
      'quantityReturned': quantityReturned,
      'companyOfReturnId': companyOfReturnId,
      'branchOfReturnId': branchOfReturnId
    };
  }

  static List<ReturnedItem> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ReturnedItem>()
        : json.map((value) => new ReturnedItem.fromJson(value)).toList();
  }

  static Map<String, ReturnedItem> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReturnedItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ReturnedItem.fromJson(value));
    }
    return map;
  }
}
