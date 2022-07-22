part of swagger.api;

class ShippingMethodWebshop {
  /* Webshop shipping method ID, as retrievable from <a href=\"?deepLinking=true#/Shipping/ShippingMethodsWebshop\"> Shipping/MethodsWebshop</a>. */
  int id = null;

/* Shipping method ID as registered in ERP. A value of -1 indicates that the default shipping method of the customer is applicable. */
  int erpId = null;

/* Shipping method is the default method. */
  bool isDefault = null;

/* Description of the shipping method. */
  String description = null;

/* Delivery code, with 0 = delivery note, 1 = NPD sticker, 2 = DHL3D label, 3 = TNT Innight, 4 = Ship, 5 = DGO-Nedpak, 6 = HST, 7 = TPG. */
  int deliveryCode = null;

  ShippingMethodWebshop();

  @override
  String toString() {
    return 'ShippingMethodWebshop[id=$id, erpId=$erpId, isDefault=$isDefault, description=$description, deliveryCode=$deliveryCode, ]';
  }

  ShippingMethodWebshop.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    erpId = json['erpId'];
    isDefault = json['isDefault'];
    description = json['description'];
    deliveryCode = json['deliveryCode'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'erpId': erpId,
      'isDefault': isDefault,
      'description': description,
      'deliveryCode': deliveryCode
    };
  }

  static List<ShippingMethodWebshop> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ShippingMethodWebshop>()
        : json
            .map((value) => new ShippingMethodWebshop.fromJson(value))
            .toList();
  }

  static Map<String, ShippingMethodWebshop> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ShippingMethodWebshop>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ShippingMethodWebshop.fromJson(value));
    }
    return map;
  }
}
