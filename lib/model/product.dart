part of swagger.api;

class Product {
  /* Product ID, as retrievable from <a href=\"?deepLinking=true#/Product/Get\">/api/Product</a> */
  String productId = null;

/* Name of product */
  List<String> description = [];

/* Product description according to purchaser */
  List<String> purchaseDescription = [];

/* Sales price for product */
  double price = null;

/* Standard Price for product */
  double standardCost = null;

/* Gross purchase price for product */
  double grossPurchasePrice = null;

/* Purchase price for product */
  double purchasePrice = null;

/* Price for product for consumer */
  double consumerPrice = null;

/* Special / Promotional price */
  double offerPrice = null;

/* Starting date when special price is applicable */
  DateTime offerStarts = null;

/* End date after which special price is no longer applicable */
  DateTime offerEnds = null;

/* VAT rate for product */
  double taxRate = null;

/* Quantity of product in standard packaging */
  double standardPackingQuantity = null;

/* United Nations Standard Products and Services Code (UNSPSC) for product */
  String unspsc = null;

/* European Article Number (EAN) for product */
  String ean = null;

/* Product Id at supplier */
  String supplierProductId = null;

/* Product Id at purchase organisation */
  String purchasingOrganizationProductId = null;

/* Sales unit description */
  String salesUnit = null;

/* Factor for price calculation */
  double priceFactor = null;

/* Type Id for product, where 0 = Regular, 1 = Finished product, 2 = Composition, 3 = Labor product */
  int productType = null;
  //enum productTypeEnum {  Regular,  EndProduct,  Composition,  Labor,  };
/* Dimensions for product, such as height, weight */
  Dimensions productDimensions = null;

/* Dimensions for package, such as height, weigth */
  Dimensions packagingDimensions = null;

  Product();

  @override
  String toString() {
    return 'Product[productId=$productId, description=$description, purchaseDescription=$purchaseDescription, price=$price, standardCost=$standardCost, grossPurchasePrice=$grossPurchasePrice, purchasePrice=$purchasePrice, consumerPrice=$consumerPrice, offerPrice=$offerPrice, offerStarts=$offerStarts, offerEnds=$offerEnds, taxRate=$taxRate, standardPackingQuantity=$standardPackingQuantity, unspsc=$unspsc, ean=$ean, supplierProductId=$supplierProductId, purchasingOrganizationProductId=$purchasingOrganizationProductId, salesUnit=$salesUnit, priceFactor=$priceFactor, productType=$productType, productDimensions=$productDimensions, packagingDimensions=$packagingDimensions, ]';
  }

  Product.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productId = json['productId'];
    description =
        (json['description'] as List).map((item) => item as String).toList();
    purchaseDescription = (json['purchaseDescription'] as List)
        .map((item) => item as String)
        .toList();
    price = json['price'] == null ? null : json['price'].toDouble();
    standardCost =
        json['standardCost'] == null ? null : json['standardCost'].toDouble();
    grossPurchasePrice = json['grossPurchasePrice'] == null
        ? null
        : json['grossPurchasePrice'].toDouble();
    purchasePrice =
        json['purchasePrice'] == null ? null : json['purchasePrice'].toDouble();
    consumerPrice =
        json['consumerPrice'] == null ? null : json['consumerPrice'].toDouble();
    offerPrice =
        json['offerPrice'] == null ? null : json['offerPrice'].toDouble();
    offerStarts = json['offerStarts'] == null
        ? null
        : DateTime.parse(json['offerStarts']);
    offerEnds =
        json['offerEnds'] == null ? null : DateTime.parse(json['offerEnds']);
    taxRate = json['taxRate'] == null ? null : json['taxRate'].toDouble();
    standardPackingQuantity = json['standardPackingQuantity'] == null
        ? null
        : json['standardPackingQuantity'].toDouble();
    unspsc = json['unspsc'];
    ean = json['ean'];
    supplierProductId = json['supplierProductId'];
    purchasingOrganizationProductId = json['purchasingOrganizationProductId'];
    salesUnit = json['salesUnit'];
    priceFactor =
        json['priceFactor'] == null ? null : json['priceFactor'].toDouble();
    productType = json['productType'];
    productDimensions = new Dimensions.fromJson(json['productDimensions']);
    packagingDimensions = new Dimensions.fromJson(json['packagingDimensions']);
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'description': description,
      'purchaseDescription': purchaseDescription,
      'price': price,
      'standardCost': standardCost,
      'grossPurchasePrice': grossPurchasePrice,
      'purchasePrice': purchasePrice,
      'consumerPrice': consumerPrice,
      'offerPrice': offerPrice,
      'offerStarts': offerStarts == null ? '' : offerStarts.toIso8601String(),
      'offerEnds': offerEnds == null ? '' : offerEnds.toIso8601String(),
      'taxRate': taxRate,
      'standardPackingQuantity': standardPackingQuantity,
      'unspsc': unspsc,
      'ean': ean,
      'supplierProductId': supplierProductId,
      'purchasingOrganizationProductId': purchasingOrganizationProductId,
      'salesUnit': salesUnit,
      'priceFactor': priceFactor,
      'productType': productType,
      'productDimensions': productDimensions,
      'packagingDimensions': packagingDimensions
    };
  }

  static List<Product> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Product>()
        : json.map((value) => new Product.fromJson(value)).toList();
  }

  static Map<String, Product> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Product>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Product.fromJson(value));
    }
    return map;
  }
}
