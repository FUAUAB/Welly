part of swagger.api;

class Composition {
  /* Product ID of composition, as retrievable from <a href=\"?deepLinking=true#/Product/Product\">/api/Product</a> */
  String productId = null;

/* Product name */
  String description = null;

/* Quantity of composition in order (if applicable) */
  double quantity = null;

/* Price of composition in order (if applicable) */
  double price = null;

/* Length of composition (if applicable for order) */
  double length = null;

/* Type of product composition (1= final product, 2= composition) */
  int type = null;
  //enum typeEnum {  FinalProduct,  Composition,  };
/* List of underlying components */
  List<Component> components = [];

/* Additional textlines (if applicable, attached to order) */
  List<String> textLines = [];

  Composition();

  @override
  String toString() {
    return 'Composition[productId=$productId, description=$description, quantity=$quantity, price=$price, length=$length, type=$type, components=$components, textLines=$textLines, ]';
  }

  Composition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productId = json['productId'];
    description = json['description'];
    quantity = json['quantity'] == null ? null : json['quantity'].toDouble();
    price = json['price'] == null ? null : json['price'].toDouble();
    length = json['length'] == null ? null : json['length'].toDouble();
    type = json['type'];
    components = Component.listFromJson(json['components']);
    textLines =
        (json['textLines'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'description': description,
      'quantity': quantity,
      'price': price,
      'length': length,
      'type': type,
      'components': components,
      'textLines': textLines
    };
  }

  static List<Composition> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Composition>()
        : json.map((value) => new Composition.fromJson(value)).toList();
  }

  static Map<String, Composition> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Composition>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Composition.fromJson(value));
    }
    return map;
  }
}
