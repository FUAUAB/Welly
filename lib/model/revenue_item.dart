part of swagger.api;

class RevenueItem {
  int companyId = null;

  int branchId = null;

  DateTime invoiceDate = null;

  int customerId = null;

  String productId = null;

  double goodsAmount = null;

  double goodsQuantity = null;

  double purchaseAmount = null;

  int salesmanId = null;

  RevenueItem();

  @override
  String toString() {
    return 'RevenueItem[companyId=$companyId, branchId=$branchId, invoiceDate=$invoiceDate, customerId=$customerId, productId=$productId, goodsAmount=$goodsAmount, goodsQuantity=$goodsQuantity, purchaseAmount=$purchaseAmount, salesmanId=$salesmanId, ]';
  }

  RevenueItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    branchId = json['branchId'];
    invoiceDate = json['invoiceDate'] == null
        ? null
        : DateTime.parse(json['invoiceDate']);
    customerId = json['customerId'];
    productId = json['productId'];
    goodsAmount =
        json['goodsAmount'] == null ? null : json['goodsAmount'].toDouble();
    goodsQuantity =
        json['goodsQuantity'] == null ? null : json['goodsQuantity'].toDouble();
    purchaseAmount = json['purchaseAmount'] == null
        ? null
        : json['purchaseAmount'].toDouble();
    salesmanId = json['salesmanId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'branchId': branchId,
      'invoiceDate': invoiceDate == null ? '' : invoiceDate.toIso8601String(),
      'customerId': customerId,
      'productId': productId,
      'goodsAmount': goodsAmount,
      'goodsQuantity': goodsQuantity,
      'purchaseAmount': purchaseAmount,
      'salesmanId': salesmanId
    };
  }

  static List<RevenueItem> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<RevenueItem>()
        : json.map((value) => new RevenueItem.fromJson(value)).toList();
  }

  static Map<String, RevenueItem> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RevenueItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new RevenueItem.fromJson(value));
    }
    return map;
  }
}
