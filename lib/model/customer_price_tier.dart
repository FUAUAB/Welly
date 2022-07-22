part of swagger.api;

class CustomerPriceTier {
  /* Minimum quantity for which price tier is applicable */
  double from = null;

/* Maximum quantity up to which price tier is applicable */
  double until = null;

/* Discount percentage for this price tier */
  double discount = null;

/* Second discount percentage for customer price tier */
  double discount2 = null;

/* Applicable price for this price tier */
  double price = null;

/* (Only in case when customer price tiers are applicable) Price tier only valid as a multiple, else product price tiers are valid. */
  bool multiplicationRequired = null;

/* Multiplication quantity for which customer price tier is valid */
  double multiplicationQuantity = null;

  CustomerPriceTier();

  @override
  String toString() {
    return 'CustomerPriceTier[from=$from, until=$until, discount=$discount, discount2=$discount2, price=$price, multiplicationRequired=$multiplicationRequired, multiplicationQuantity=$multiplicationQuantity, ]';
  }

  CustomerPriceTier.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    from = json['from'] == null ? null : json['from'].toDouble();
    until = json['until'] == null ? null : json['until'].toDouble();
    discount = json['discount'] == null ? null : json['discount'].toDouble();
    discount2 = json['discount2'] == null ? null : json['discount2'].toDouble();
    price = json['price'] == null ? null : json['price'].toDouble();
    multiplicationRequired = json['multiplicationRequired'];
    multiplicationQuantity = json['multiplicationQuantity'] == null
        ? null
        : json['multiplicationQuantity'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {
      'from': from,
      'until': until,
      'discount': discount,
      'discount2': discount2,
      'price': price,
      'multiplicationRequired': multiplicationRequired,
      'multiplicationQuantity': multiplicationQuantity
    };
  }

  static List<CustomerPriceTier> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CustomerPriceTier>()
        : json.map((value) => new CustomerPriceTier.fromJson(value)).toList();
  }

  static Map<String, CustomerPriceTier> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CustomerPriceTier>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CustomerPriceTier.fromJson(value));
    }
    return map;
  }
}
