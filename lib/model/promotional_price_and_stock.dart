part of swagger.api;

class PromotionalPriceAndStock {
  /* Product ID, as retrievable from <a href=\"?deepLinking=true#/Product/Get\">/api/Product</a> */
  String productId = null;

/* Product price */
  double price = null;

/* Stock amount */
  double stock = null;

/* Price unit */
  String priceUnit = null;

/* Unit for quantity */
  int unitQuantity = null;

  PromotionalPriceAndStock();

  @override
  String toString() {
    return 'PromotionalPriceAndStock[productId=$productId, price=$price, stock=$stock, priceUnit=$priceUnit, unitQuantity=$unitQuantity, ]';
  }

  PromotionalPriceAndStock.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productId = json['productId'];
    price = json['price'] == null ? null : json['price'].toDouble();
    stock = json['stock'] == null ? null : json['stock'].toDouble();
    priceUnit = json['priceUnit'];
    unitQuantity = json['unitQuantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'price': price,
      'stock': stock,
      'priceUnit': priceUnit,
      'unitQuantity': unitQuantity
    };
  }

  static List<PromotionalPriceAndStock> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<PromotionalPriceAndStock>()
        : json
            .map((value) => new PromotionalPriceAndStock.fromJson(value))
            .toList();
  }

  static Map<String, PromotionalPriceAndStock> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PromotionalPriceAndStock>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PromotionalPriceAndStock.fromJson(value));
    }
    return map;
  }
}
