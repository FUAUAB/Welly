part of swagger.api;

class ShippingCostResult {
  /* Amount of shipping costs to be applied */
  double shippingCosts = null;

  String costsDescription = null;

/* Total value of the supplied products */
  double goodsAmount = null;

/* Amount above which no shipping costs will be applied */
  double freeAmount = null;

  ShippingCostResult();

  @override
  String toString() {
    return 'ShippingCostResult[shippingCosts=$shippingCosts, costsDescription=$costsDescription, goodsAmount=$goodsAmount, freeAmount=$freeAmount, ]';
  }

  ShippingCostResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    shippingCosts =
        json['shippingCosts'] == null ? null : json['shippingCosts'].toDouble();
    costsDescription = json['costsDescription'];
    goodsAmount =
        json['goodsAmount'] == null ? null : json['goodsAmount'].toDouble();
    freeAmount =
        json['freeAmount'] == null ? null : json['freeAmount'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {
      'shippingCosts': shippingCosts,
      'costsDescription': costsDescription,
      'goodsAmount': goodsAmount,
      'freeAmount': freeAmount
    };
  }

  static List<ShippingCostResult> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ShippingCostResult>()
        : json.map((value) => new ShippingCostResult.fromJson(value)).toList();
  }

  static Map<String, ShippingCostResult> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ShippingCostResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ShippingCostResult.fromJson(value));
    }
    return map;
  }
}
