part of swagger.api;

class ProductInformation {
  /* Name of product */
  String description = null;

/* Product ID as registered in ERP system, as retrievable from <a href=\"?deepLinking=true#/Product/Get\">/api/Product</a> */
  String supplierPID = null;

/* Search key for product */
  String searchKey = null;

/* Product ID at purchase organisation */
  String supplierAltPID = null;

/* European Article Number (EAN) for product */
  String internationalPID = null;

/* Product Id at supplier */
  String manufacturerPID = null;

/* Meta keywords for product */
  List<CultureString> keywords = [];

/* Media details for product */
  List<MediaInformation> mediaInformation = [];

/* Price details for product */
  PriceInformation priceInformation = null;

/* ID for sales unit */
  int unitId = null;

/* Quantity of product for which price is applicable */
  double priceQuantity = null;

/* Number of content units in order unit */
  int contentUnitPerOrderUnit = null;

/* Product code as required by customs and as registered at Statistical Office */
  int customsNumber = null;

/* Country ID for product's country of origin, as retrievable from <a href=\"?deepLinking=true#/Country/Get\">/api/Country</a> */
  int countryOfOrigin = null;

/* United Nations Standard Products and Services Code (UNSPSC) for product */
  int unspsc = null;

/* Indicates if deviation of standard packing quantity is allowed in orders */
  bool deviatePacking = null;

/* Indicates if deviation of standard packing quantity is allowed in orders in webshop */
  bool canOrderSingleUnit = null;

/* Quantity of product in standard packaging */
  double standardPackingQuantity = null;

/* Purchase unit Id */
  int purchaseUnitId = null;

/* Quantity in purchase unit */
  double purchaseUnitQuantity = 1.0;

/* Minimum quantity for purchase */
  double purchaseMinimum = null;

/* Package quantity for product */
  double packageQuantity = 1.0;

/* Sales description of product */
  List<String> salesDescription = [];

/* Product state, with 1 = Stock, 2 = No stock, 3 = Do not order, 5 = Do not order / sell, 6 = Outlet, 7 = Do not sell, 8 = Special, 9 = Can be deleted */
  int state = 2;

/* Product group ID */
  int groupId = null;

/* Product sub group ID */
  int subGroupId = null;

/* Full group identification */
  String groupFull = null;

/* Full subgroup identification */
  String subGroupFull = null;

/* Supplier Id */
  int supplierId = null;

  ProductInformation();

  @override
  String toString() {
    return 'ProductInformation[description=$description, supplierPID=$supplierPID, searchKey=$searchKey, supplierAltPID=$supplierAltPID, internationalPID=$internationalPID, manufacturerPID=$manufacturerPID, keywords=$keywords, mediaInformation=$mediaInformation, priceInformation=$priceInformation, unitId=$unitId, priceQuantity=$priceQuantity, contentUnitPerOrderUnit=$contentUnitPerOrderUnit, customsNumber=$customsNumber, countryOfOrigin=$countryOfOrigin, unspsc=$unspsc, deviatePacking=$deviatePacking, canOrderSingleUnit=$canOrderSingleUnit, standardPackingQuantity=$standardPackingQuantity, purchaseUnitId=$purchaseUnitId, purchaseUnitQuantity=$purchaseUnitQuantity, purchaseMinimum=$purchaseMinimum, packageQuantity=$packageQuantity, salesDescription=$salesDescription, state=$state, groupId=$groupId, subGroupId=$subGroupId, groupFull=$groupFull, subGroupFull=$subGroupFull, supplierId=$supplierId, ]';
  }

  ProductInformation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    description = json['description'];
    supplierPID = json['supplierPID'];
    searchKey = json['searchKey'];
    supplierAltPID = json['supplierAltPID'];
    internationalPID = json['internationalPID'];
    manufacturerPID = json['manufacturerPID'];
    keywords = CultureString.listFromJson(json['keywords']);
    mediaInformation = MediaInformation.listFromJson(json['mediaInformation']);
    priceInformation = new PriceInformation.fromJson(json['priceInformation']);
    unitId = json['unitId'];
    priceQuantity =
        json['priceQuantity'] == null ? null : json['priceQuantity'].toDouble();
    contentUnitPerOrderUnit = json['contentUnitPerOrderUnit'];
    customsNumber = json['customsNumber'];
    countryOfOrigin = json['countryOfOrigin'];
    unspsc = json['unspsc'];
    deviatePacking = json['deviatePacking'];
    canOrderSingleUnit = json['canOrderSingleUnit'];
    standardPackingQuantity = json['standardPackingQuantity'] == null
        ? null
        : json['standardPackingQuantity'].toDouble();
    purchaseUnitId = json['purchaseUnitId'];
    purchaseUnitQuantity = json['purchaseUnitQuantity'] == null
        ? null
        : json['purchaseUnitQuantity'].toDouble();
    purchaseMinimum = json['purchaseMinimum'] == null
        ? null
        : json['purchaseMinimum'].toDouble();
    packageQuantity = json['packageQuantity'] == null
        ? null
        : json['packageQuantity'].toDouble();
    salesDescription = (json['salesDescription'] as List)
        .map((item) => item as String)
        .toList();
    state = json['state'];
    groupId = json['groupId'];
    subGroupId = json['subGroupId'];
    groupFull = json['groupFull'];
    subGroupFull = json['subGroupFull'];
    supplierId = json['supplierId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'supplierPID': supplierPID,
      'searchKey': searchKey,
      'supplierAltPID': supplierAltPID,
      'internationalPID': internationalPID,
      'manufacturerPID': manufacturerPID,
      'keywords': keywords,
      'mediaInformation': mediaInformation,
      'priceInformation': priceInformation,
      'unitId': unitId,
      'priceQuantity': priceQuantity,
      'contentUnitPerOrderUnit': contentUnitPerOrderUnit,
      'customsNumber': customsNumber,
      'countryOfOrigin': countryOfOrigin,
      'unspsc': unspsc,
      'deviatePacking': deviatePacking,
      'canOrderSingleUnit': canOrderSingleUnit,
      'standardPackingQuantity': standardPackingQuantity,
      'purchaseUnitId': purchaseUnitId,
      'purchaseUnitQuantity': purchaseUnitQuantity,
      'purchaseMinimum': purchaseMinimum,
      'packageQuantity': packageQuantity,
      'salesDescription': salesDescription,
      'state': state,
      'groupId': groupId,
      'subGroupId': subGroupId,
      'groupFull': groupFull,
      'subGroupFull': subGroupFull,
      'supplierId': supplierId
    };
  }

  static List<ProductInformation> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ProductInformation>()
        : json.map((value) => new ProductInformation.fromJson(value)).toList();
  }

  static Map<String, ProductInformation> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductInformation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ProductInformation.fromJson(value));
    }
    return map;
  }
}
