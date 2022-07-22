part of swagger.api;

class WebshopProduct {
  /* Product ID, as retrievable from <a href=\"?deepLinking=true#/Product/Get\">/api/Product</a> */
  String productId = null;

/* Order quantity of product */
  double quantity = null;

/* Order line */
  int orderLineId = null;

/* Product price */
  double price = null;

/* Product length */
  double length = null;

/* Additional textlines attached to order */
  List<String> textLines = [];

  WebshopProduct();

  @override
  String toString() {
    return 'WebshopProduct[productId=$productId, quantity=$quantity, orderLineId=$orderLineId, price=$price, length=$length, textLines=$textLines, ]';
  }

  WebshopProduct.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productId = json['productId'];
    quantity = json['quantity'] == null ? null : json['quantity'].toDouble();
    orderLineId = json['orderLineId'];
    price = json['price'] == null ? null : json['price'].toDouble();
    length = json['length'] == null ? null : json['length'].toDouble();
    textLines =
        (json['textLines'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'quantity': quantity,
      'orderLineId': orderLineId,
      'price': price,
      'length': length,
      'textLines': textLines
    };
  }

  static List<WebshopProduct> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<WebshopProduct>()
        : json.map((value) => new WebshopProduct.fromJson(value)).toList();
  }

  static Map<String, WebshopProduct> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebshopProduct>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new WebshopProduct.fromJson(value));
    }
    return map;
  }
}
