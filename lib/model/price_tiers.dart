part of swagger.api;

class PriceTiers {
  /* Product ID, as retrievable from <a href=\"?deepLinking=true#/Product/ShopProductInformation\">/api/Product</a> */
  String productId = null;

/* Price tiers for product */
  List<PriceTier> productTiers = [];

/* Price tiers for customer */
  List<CustomerPriceTier> customerTiers = [];

  PriceTiers();

  @override
  String toString() {
    return 'PriceTiers[productId=$productId, productTiers=$productTiers, customerTiers=$customerTiers, ]';
  }

  PriceTiers.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productId = json['productId'];
    productTiers = PriceTier.listFromJson(json['productTiers']);
    customerTiers = CustomerPriceTier.listFromJson(json['customerTiers']);
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'productTiers': productTiers,
      'customerTiers': customerTiers
    };
  }

  static List<PriceTiers> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<PriceTiers>()
        : json.map((value) => new PriceTiers.fromJson(value)).toList();
  }

  static Map<String, PriceTiers> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PriceTiers>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PriceTiers.fromJson(value));
    }
    return map;
  }
}
