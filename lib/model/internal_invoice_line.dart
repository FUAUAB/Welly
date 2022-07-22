part of swagger.api;

class InternalInvoiceLine {
  int internalInvoiceLineId = null;

  int supplierId = null;

  int supplierGroupId = null;

  String productId = null;

  String supplierProductId = null;

  String supplierOrganisationProductId = null;

/* Type (0=Product, 1=Special, 2=Cost, 3=Text) */
  int type = null;

  String description = null;

/* TaxCategoryId (0=VatHigh, 1=VatLow, 2=VatZero) */
  int taxCategoryId = null;

  Unit purchaseUnitId = null;

  int purchasePriceQuantity = null;

  double orderQuantity = null;

  double deliveredQuantity = null;

  int ledgerAccountNumber = null;

  double discountPercentage = null;

  double discountPercentage2 = null;

  double discountPercentage3 = null;

/* Purchase price (before discounts / surcharges) per unit */
  double purchasePrice = null;

/* Net price per unit */
  double netPrice = null;

  double discountAmount = null;

  double netLineAmount = null;

  bool zeroPriceAccepted = null;

  Employee receivingEmployee = null;

  Employee purchaser = null;

  InternalInvoiceLine();

  @override
  String toString() {
    return 'InternalInvoiceLine[internalInvoiceLineId=$internalInvoiceLineId, supplierId=$supplierId, supplierGroupId=$supplierGroupId, productId=$productId, supplierProductId=$supplierProductId, supplierOrganisationProductId=$supplierOrganisationProductId, type=$type, description=$description, taxCategoryId=$taxCategoryId, purchaseUnitId=$purchaseUnitId, purchasePriceQuantity=$purchasePriceQuantity, orderQuantity=$orderQuantity, deliveredQuantity=$deliveredQuantity, ledgerAccountNumber=$ledgerAccountNumber, discountPercentage=$discountPercentage, discountPercentage2=$discountPercentage2, discountPercentage3=$discountPercentage3, purchasePrice=$purchasePrice, netPrice=$netPrice, discountAmount=$discountAmount, netLineAmount=$netLineAmount, zeroPriceAccepted=$zeroPriceAccepted, receivingEmployee=$receivingEmployee, purchaser=$purchaser, ]';
  }

  InternalInvoiceLine.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    internalInvoiceLineId = json['internalInvoiceLineId'];
    supplierId = json['supplierId'];
    supplierGroupId = json['supplierGroupId'];
    productId = json['productId'];
    supplierProductId = json['supplierProductId'];
    supplierOrganisationProductId = json['supplierOrganisationProductId'];
    type = json['type'];
    description = json['description'];
    taxCategoryId = json['taxCategoryId'];
    purchaseUnitId = new Unit.fromJson(json['purchaseUnitId']);
    purchasePriceQuantity = json['purchasePriceQuantity'];
    orderQuantity =
        json['orderQuantity'] == null ? null : json['orderQuantity'].toDouble();
    deliveredQuantity = json['deliveredQuantity'] == null
        ? null
        : json['deliveredQuantity'].toDouble();
    ledgerAccountNumber = json['ledgerAccountNumber'];
    discountPercentage = json['discountPercentage'] == null
        ? null
        : json['discountPercentage'].toDouble();
    discountPercentage2 = json['discountPercentage2'] == null
        ? null
        : json['discountPercentage2'].toDouble();
    discountPercentage3 = json['discountPercentage3'] == null
        ? null
        : json['discountPercentage3'].toDouble();
    purchasePrice =
        json['purchasePrice'] == null ? null : json['purchasePrice'].toDouble();
    netPrice = json['netPrice'] == null ? null : json['netPrice'].toDouble();
    discountAmount = json['discountAmount'] == null
        ? null
        : json['discountAmount'].toDouble();
    netLineAmount =
        json['netLineAmount'] == null ? null : json['netLineAmount'].toDouble();
    zeroPriceAccepted = json['zeroPriceAccepted'];
    receivingEmployee = new Employee.fromJson(json['receivingEmployee']);
    purchaser = new Employee.fromJson(json['purchaser']);
  }

  Map<String, dynamic> toJson() {
    return {
      'internalInvoiceLineId': internalInvoiceLineId,
      'supplierId': supplierId,
      'supplierGroupId': supplierGroupId,
      'productId': productId,
      'supplierProductId': supplierProductId,
      'supplierOrganisationProductId': supplierOrganisationProductId,
      'type': type,
      'description': description,
      'taxCategoryId': taxCategoryId,
      'purchaseUnitId': purchaseUnitId,
      'purchasePriceQuantity': purchasePriceQuantity,
      'orderQuantity': orderQuantity,
      'deliveredQuantity': deliveredQuantity,
      'ledgerAccountNumber': ledgerAccountNumber,
      'discountPercentage': discountPercentage,
      'discountPercentage2': discountPercentage2,
      'discountPercentage3': discountPercentage3,
      'purchasePrice': purchasePrice,
      'netPrice': netPrice,
      'discountAmount': discountAmount,
      'netLineAmount': netLineAmount,
      'zeroPriceAccepted': zeroPriceAccepted,
      'receivingEmployee': receivingEmployee,
      'purchaser': purchaser
    };
  }

  static List<InternalInvoiceLine> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<InternalInvoiceLine>()
        : json.map((value) => new InternalInvoiceLine.fromJson(value)).toList();
  }

  static Map<String, InternalInvoiceLine> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InternalInvoiceLine>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new InternalInvoiceLine.fromJson(value));
    }
    return map;
  }
}
