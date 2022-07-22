part of swagger.api;

class Component {
  /* Product ID of component, as retrievable from <a href=\"?deepLinking=true#/Product/Product\">/api/Product</a> */
  String productId = null;

/* Productname */
  String description = null;

/* Sequence ID of product within the composition in order (please note: sequence id in order differs from sequence id at Composition Maintenance in ERP!) */
  int sequenceId = null;

/* Line type of component (product (0), special (1), cost (2), text (3)) */
  int type = null;

/* Quantity of this component in composition */
  double quantity = null;

/* Attribute ID attributed to component */
  int attributeId = null;

  Component();

  @override
  String toString() {
    return 'Component[productId=$productId, description=$description, sequenceId=$sequenceId, type=$type, quantity=$quantity, attributeId=$attributeId, ]';
  }

  Component.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productId = json['productId'];
    description = json['description'];
    sequenceId = json['sequenceId'];
    type = json['type'];
    quantity = json['quantity'] == null ? null : json['quantity'].toDouble();
    attributeId = json['attributeId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'description': description,
      'sequenceId': sequenceId,
      'type': type,
      'quantity': quantity,
      'attributeId': attributeId
    };
  }

  static List<Component> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Component>()
        : json.map((value) => new Component.fromJson(value)).toList();
  }

  static Map<String, Component> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Component>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Component.fromJson(value));
    }
    return map;
  }
}
