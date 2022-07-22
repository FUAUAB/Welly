part of swagger.api;

class V13ShopProductData {
  /* Store ID, as retrievable from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop/Store</a> */
  int storeId = null;

/* Name of product */
  List<CultureString> name = [];

/* Short description of product */
  List<CultureString> shortDescription = [];

/* Comprehensive description of product */
  List<CultureString> fullDescription = [];

/* Meta keywords for product */
  List<CultureString> metaKeywords = [];

/* Supplier ID */
  int supplierId = null;

/* Global Trade Item Number (GTIN) for product */
  String gtin = null;

/* VAT category Id for product */
  int taxCategoryId = null;

/* Sales price for product */
  double price = null;

/* Special / promotional price for product */
  double specialPrice = null;

/* Starting date when special price is applicable */
  DateTime specialPriceStartDateTimeUtc = null;

/* End date after which special price is no longer applicable */
  DateTime specialPriceEndDateTimeUtc = null;

/* Weight of product */
  double weight = null;

/* Consumer price for product */
  double consumerPrice = null;

/* Sales unit for product */
  String unit = null;

/* Pricing unit for product */
  String priceUnit = null;

/* Factor for price calculation */
  int priceFactor = null;

/* Brand name */
  String brand = null;

/* Product Id at supplier */
  String supplierProductId = null;

/* Product Id at purchase organisation */
  String purchaseProductId = null;

/* Quantity of product in standard packaging */
  double standardPackageQuantity = null;

/* Has product a tier price? */
  bool hasTierPrice = null;

/* Product state, with 1 = Stock, 2 = No stock, 3 = Do not order, 5 = Do not order / sell, 6 = Outlet, 7 = Do not sell, 8 = Special, 9 = Can be deleted */
  int state = null;

/* If in package, single unit can be ordered */
  bool canOrderSingleUnit = null;

/* ISO-identication of unit */
  String isoUnit = null;

/* United Nations Standard Products and Services Code (UNSPSC) for product */
  int unspsc = null;

/* Calculate a surcharge if package has to be opened to deliver desired quantity */
  double surchargeOpenedPackage = null;

/* ID for sales unit */
  int unitId = null;

/* Dimensions for product, such as height, weight */
  Dimensions productDimensions = null;

/* Dimensions for package, such as height, weigth */
  Dimensions packageDimensions = null;

/* Search key for product */
  String searchKey = null;

/* Vat rate in percent */
  double vatRate = null;

/* Basis price (including surcharge) for product */
  double webshopBasePrice = null;

/* Transfer price for product */
  double transferPrice = null;

  V13ShopProductData();

  @override
  String toString() {
    return 'V13ShopProductData[storeId=$storeId, name=$name, shortDescription=$shortDescription, fullDescription=$fullDescription, metaKeywords=$metaKeywords, supplierId=$supplierId, gtin=$gtin, taxCategoryId=$taxCategoryId, price=$price, specialPrice=$specialPrice, specialPriceStartDateTimeUtc=$specialPriceStartDateTimeUtc, specialPriceEndDateTimeUtc=$specialPriceEndDateTimeUtc, weight=$weight, consumerPrice=$consumerPrice, unit=$unit, priceUnit=$priceUnit, priceFactor=$priceFactor, brand=$brand, supplierProductId=$supplierProductId, purchaseProductId=$purchaseProductId, standardPackageQuantity=$standardPackageQuantity, hasTierPrice=$hasTierPrice, state=$state, canOrderSingleUnit=$canOrderSingleUnit, isoUnit=$isoUnit, unspsc=$unspsc, surchargeOpenedPackage=$surchargeOpenedPackage, unitId=$unitId, productDimensions=$productDimensions, packageDimensions=$packageDimensions, searchKey=$searchKey, vatRate=$vatRate, webshopBasePrice=$webshopBasePrice, transferPrice=$transferPrice, ]';
  }

  V13ShopProductData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    storeId = json['storeId'];
    name = CultureString.listFromJson(json['name']);
    shortDescription = CultureString.listFromJson(json['shortDescription']);
    fullDescription = CultureString.listFromJson(json['fullDescription']);
    metaKeywords = CultureString.listFromJson(json['metaKeywords']);
    supplierId = json['supplierId'];
    gtin = json['gtin'];
    taxCategoryId = json['taxCategoryId'];
    price = json['price'] == null ? null : json['price'].toDouble();
    specialPrice =
        json['specialPrice'] == null ? null : json['specialPrice'].toDouble();
    specialPriceStartDateTimeUtc = json['specialPriceStartDateTimeUtc'] == null
        ? null
        : DateTime.parse(json['specialPriceStartDateTimeUtc']);
    specialPriceEndDateTimeUtc = json['specialPriceEndDateTimeUtc'] == null
        ? null
        : DateTime.parse(json['specialPriceEndDateTimeUtc']);
    weight = json['weight'] == null ? null : json['weight'].toDouble();
    consumerPrice =
        json['consumerPrice'] == null ? null : json['consumerPrice'].toDouble();
    unit = json['unit'];
    priceUnit = json['priceUnit'];
    priceFactor = json['priceFactor'];
    brand = json['brand'];
    supplierProductId = json['supplierProductId'];
    purchaseProductId = json['purchaseProductId'];
    standardPackageQuantity = json['standardPackageQuantity'] == null
        ? null
        : json['standardPackageQuantity'].toDouble();
    hasTierPrice = json['hasTierPrice'];
    state = json['state'];
    canOrderSingleUnit = json['canOrderSingleUnit'];
    isoUnit = json['isoUnit'];
    unspsc = json['unspsc'];
    surchargeOpenedPackage = json['surchargeOpenedPackage'] == null
        ? null
        : json['surchargeOpenedPackage'].toDouble();
    unitId = json['unitId'];
    productDimensions = new Dimensions.fromJson(json['productDimensions']);
    packageDimensions = new Dimensions.fromJson(json['packageDimensions']);
    searchKey = json['searchKey'];
    vatRate = json['vatRate'] == null ? null : json['vatRate'].toDouble();
    webshopBasePrice = json['webshopBasePrice'] == null
        ? null
        : json['webshopBasePrice'].toDouble();
    transferPrice =
        json['transferPrice'] == null ? null : json['transferPrice'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {
      'storeId': storeId,
      'name': name,
      'shortDescription': shortDescription,
      'fullDescription': fullDescription,
      'metaKeywords': metaKeywords,
      'supplierId': supplierId,
      'gtin': gtin,
      'taxCategoryId': taxCategoryId,
      'price': price,
      'specialPrice': specialPrice,
      'specialPriceStartDateTimeUtc': specialPriceStartDateTimeUtc == null
          ? ''
          : specialPriceStartDateTimeUtc.toIso8601String(),
      'specialPriceEndDateTimeUtc': specialPriceEndDateTimeUtc == null
          ? ''
          : specialPriceEndDateTimeUtc.toIso8601String(),
      'weight': weight,
      'consumerPrice': consumerPrice,
      'unit': unit,
      'priceUnit': priceUnit,
      'priceFactor': priceFactor,
      'brand': brand,
      'supplierProductId': supplierProductId,
      'purchaseProductId': purchaseProductId,
      'standardPackageQuantity': standardPackageQuantity,
      'hasTierPrice': hasTierPrice,
      'state': state,
      'canOrderSingleUnit': canOrderSingleUnit,
      'isoUnit': isoUnit,
      'unspsc': unspsc,
      'surchargeOpenedPackage': surchargeOpenedPackage,
      'unitId': unitId,
      'productDimensions': productDimensions,
      'packageDimensions': packageDimensions,
      'searchKey': searchKey,
      'vatRate': vatRate,
      'webshopBasePrice': webshopBasePrice,
      'transferPrice': transferPrice
    };
  }

  static List<V13ShopProductData> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V13ShopProductData>()
        : json.map((value) => new V13ShopProductData.fromJson(value)).toList();
  }

  static Map<String, V13ShopProductData> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V13ShopProductData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V13ShopProductData.fromJson(value));
    }
    return map;
  }
}
