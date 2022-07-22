part of swagger.api;

class PriceTier {
  /* Minimum quantity for which price tier is applicable */
  double from = null;

/* Maximum quantity up to which price tier is applicable */
  double until = null;

/* Discount percentage for this price tier */
  double discount = null;

/* Applicable price for this price tier */
  double price = null;

  PriceTier();

  @override
  String toString() {
    return 'PriceTier[from=$from, until=$until, discount=$discount, price=$price, ]';
  }

  PriceTier.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    from = json['from'] == null ? null : json['from'].toDouble();
    until = json['until'] == null ? null : json['until'].toDouble();
    discount = json['discount'] == null ? null : json['discount'].toDouble();
    price = json['price'] == null ? null : json['price'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {'from': from, 'until': until, 'discount': discount, 'price': price};
  }

  static List<PriceTier> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<PriceTier>()
        : json.map((value) => new PriceTier.fromJson(value)).toList();
  }

  static Map<String, PriceTier> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PriceTier>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PriceTier.fromJson(value));
    }
    return map;
  }
}
