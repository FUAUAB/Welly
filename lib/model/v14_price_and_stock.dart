part of swagger.api;

class V14PriceAndStock {
  /* Product ID, as retrievable from <a href=\"?deepLinking=true#/Product/Get\">/api/Product</a> */
  String productId = null;

/* Product price */
  double price = null;

/* Product gross price */
  double grossPrice = null;

/* Product net price */
  double netPrice = null;

/* First discount on product, in percent */
  double discountPercentage1 = null;

/* Second discount on product, in percent */
  double discountPercentage2 = null;

/* Net line amount */
  double netLineAmount = null;

/* Discount amount */
  double discountAmount = null;

/* Surcharge on product, in percent */
  double surchargePercentage = null;

/* Margin on product, in percent */
  double marginPercentage = null;

/* Price code, with 1 = Manual, 2 = Net price agreement, 3 = Discount price agreement, 4 = Discount agreement, 5 = Action price customer group,  6 = Discount arrangement, 7 = Standard price, 8 = Action price, 9 = Surcharge price, 10 = Product price tier,  13 = Price list, 14 = Product assortment discount, 15 = Project price list,   16 = Project net price agreement, 17 = Project discount price agreement, 18 = Project discount agreement,   20 = Price tier discount sub group, 21 = Price tier customer, 22 = Price tier product, 23 = Webshop price, 24 = Webshop credits,  88 = Waranty */
  int priceCode = null;

/* Surcharge on packing applied? */
  bool packingChargeApplied = null;

/* Surcharge on packing, in percent */
  double packingChargePercentage = null;

/* Is product excluded? */
  bool excluded = null;

/* Product can be ordered as a single unit */
  bool canOrderSingleUnit = null;

/* Stock amount */
  double stock = null;

/* Price quantity */
  int priceQuantity = null;

/* Price as calculated in price quantity */
  double priceQuantityAmount = null;

/* Price unit */
  String priceUnit = null;

/* Unit for quantity */
  int unitQuantity = null;

/* Quantity for standard packaging of product */
  double standardPackagingQuantity = null;

/* Price for packaging of product */
  double packagingPrice = null;

/* Suggested retail price */
  double suggestedRetailPrice = null;

/* Retail price according to price list */
  double retailPrice = null;

/* Standard accounting price */
  double standardPrice = null;

/* Average purchase price */
  double averagePurchasePrice = null;

/* Product quantity */
  double quantity = null;

/* Error message */
  bool error = null;

/* Cost for product */
  List<Cost> cost = [];

/* Product state, with 1 = Stock, 2 = No stock, 3 = Do not order, 5 = Do not order / sell, 6 = Outlet, 7 = Do not sell, 8 = Special, 9 = Can be deleted */
  int state = null;

  V14PriceAndStock();

  @override
  String toString() {
    return 'V14PriceAndStock[productId=$productId, price=$price, grossPrice=$grossPrice, netPrice=$netPrice, discountPercentage1=$discountPercentage1, discountPercentage2=$discountPercentage2, netLineAmount=$netLineAmount, discountAmount=$discountAmount, surchargePercentage=$surchargePercentage, marginPercentage=$marginPercentage, priceCode=$priceCode, packingChargeApplied=$packingChargeApplied, packingChargePercentage=$packingChargePercentage, excluded=$excluded, canOrderSingleUnit=$canOrderSingleUnit, stock=$stock, priceQuantity=$priceQuantity, priceQuantityAmount=$priceQuantityAmount, priceUnit=$priceUnit, unitQuantity=$unitQuantity, standardPackagingQuantity=$standardPackagingQuantity, packagingPrice=$packagingPrice, suggestedRetailPrice=$suggestedRetailPrice, retailPrice=$retailPrice, standardPrice=$standardPrice, averagePurchasePrice=$averagePurchasePrice, quantity=$quantity, error=$error, cost=$cost, state=$state, ]';
  }

  V14PriceAndStock.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productId = json['productId'];
    price = json['price'] == null ? null : json['price'].toDouble();
    grossPrice =
        json['grossPrice'] == null ? null : json['grossPrice'].toDouble();
    netPrice = json['netPrice'] == null ? null : json['netPrice'].toDouble();
    discountPercentage1 = json['discountPercentage1'] == null
        ? null
        : json['discountPercentage1'].toDouble();
    discountPercentage2 = json['discountPercentage2'] == null
        ? null
        : json['discountPercentage2'].toDouble();
    netLineAmount =
        json['netLineAmount'] == null ? null : json['netLineAmount'].toDouble();
    discountAmount = json['discountAmount'] == null
        ? null
        : json['discountAmount'].toDouble();
    surchargePercentage = json['surchargePercentage'] == null
        ? null
        : json['surchargePercentage'].toDouble();
    marginPercentage = json['marginPercentage'] == null
        ? null
        : json['marginPercentage'].toDouble();
    priceCode = json['priceCode'];
    packingChargeApplied = json['packingChargeApplied'];
    packingChargePercentage = json['packingChargePercentage'] == null
        ? null
        : json['packingChargePercentage'].toDouble();
    excluded = json['excluded'];
    canOrderSingleUnit = json['canOrderSingleUnit'];
    stock = json['stock'] == null ? null : json['stock'].toDouble();
    priceQuantity = json['priceQuantity'];
    priceQuantityAmount = json['priceQuantityAmount'] == null
        ? null
        : json['priceQuantityAmount'].toDouble();
    priceUnit = json['priceUnit'];
    unitQuantity = json['unitQuantity'];
    standardPackagingQuantity = json['standardPackagingQuantity'] == null
        ? null
        : json['standardPackagingQuantity'].toDouble();
    packagingPrice = json['packagingPrice'] == null
        ? null
        : json['packagingPrice'].toDouble();
    suggestedRetailPrice = json['suggestedRetailPrice'] == null
        ? null
        : json['suggestedRetailPrice'].toDouble();
    retailPrice =
        json['retailPrice'] == null ? null : json['retailPrice'].toDouble();
    standardPrice =
        json['standardPrice'] == null ? null : json['standardPrice'].toDouble();
    averagePurchasePrice = json['averagePurchasePrice'] == null
        ? null
        : json['averagePurchasePrice'].toDouble();
    quantity = json['quantity'] == null ? null : json['quantity'].toDouble();
    error = json['error'];
    cost = Cost.listFromJson(json['cost']);
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'price': price,
      'grossPrice': grossPrice,
      'netPrice': netPrice,
      'discountPercentage1': discountPercentage1,
      'discountPercentage2': discountPercentage2,
      'netLineAmount': netLineAmount,
      'discountAmount': discountAmount,
      'surchargePercentage': surchargePercentage,
      'marginPercentage': marginPercentage,
      'priceCode': priceCode,
      'packingChargeApplied': packingChargeApplied,
      'packingChargePercentage': packingChargePercentage,
      'excluded': excluded,
      'canOrderSingleUnit': canOrderSingleUnit,
      'stock': stock,
      'priceQuantity': priceQuantity,
      'priceQuantityAmount': priceQuantityAmount,
      'priceUnit': priceUnit,
      'unitQuantity': unitQuantity,
      'standardPackagingQuantity': standardPackagingQuantity,
      'packagingPrice': packagingPrice,
      'suggestedRetailPrice': suggestedRetailPrice,
      'retailPrice': retailPrice,
      'standardPrice': standardPrice,
      'averagePurchasePrice': averagePurchasePrice,
      'quantity': quantity,
      'error': error,
      'cost': cost,
      'state': state
    };
  }

  static List<V14PriceAndStock> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V14PriceAndStock>()
        : json.map((value) => new V14PriceAndStock.fromJson(value)).toList();
  }

  static Map<String, V14PriceAndStock> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V14PriceAndStock>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V14PriceAndStock.fromJson(value));
    }
    return map;
  }
}
