part of swagger.api;

class StockChange {
  int warehouseId = null;

/* Identification to find the corresponding product, one or multiple ids can be supplied */
  ProductIdentification product = null;

  String warehouseLocation = null;

/* Quantity to be changed. (can be positive or negative) */
  double changeQuantity = null;

/* Indicates the reason for this stock change */
  int stockChangeTypeId = null;

  StockChange();

  @override
  String toString() {
    return 'StockChange[warehouseId=$warehouseId, product=$product, warehouseLocation=$warehouseLocation, changeQuantity=$changeQuantity, stockChangeTypeId=$stockChangeTypeId, ]';
  }

  StockChange.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    warehouseId = json['warehouseId'];
    product = new ProductIdentification.fromJson(json['product']);
    warehouseLocation = json['warehouseLocation'];
    changeQuantity = json['changeQuantity'] == null
        ? null
        : json['changeQuantity'].toDouble();
    stockChangeTypeId = json['stockChangeTypeId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'warehouseId': warehouseId,
      'product': product,
      'warehouseLocation': warehouseLocation,
      'changeQuantity': changeQuantity,
      'stockChangeTypeId': stockChangeTypeId
    };
  }

  static List<StockChange> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<StockChange>()
        : json.map((value) => new StockChange.fromJson(value)).toList();
  }

  static Map<String, StockChange> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StockChange>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new StockChange.fromJson(value));
    }
    return map;
  }
}
