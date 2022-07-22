part of swagger.api;

class PurchaseInvoice {
  int companyId = null;
  // range from 1 to 99//

  int invoiceId = null;

  DateTime bookingDate = null;

  DateTime invoiceDate = null;

  int supplierId = null;

  String supplierInvoiceId = null;

  int currencyId = null;

/* Total invoice amount in foreign currency */
  double invoiceTotalAmount = null;

  String journalEntryDescription = null;

  int paymentTerm = null;

/* Payment discount information (amount in foreign currency) */
  PaymentDiscount paymentDiscount = null;

/* Credit restriction surcharge information (ammount in foreign currency */
  CreditRestrictionSurcharge creditRestrictionSurcharge = null;

/* Vat zero values (amounts in foreign currency) */
  Vat vatZero = null;

/* Vat low values (amounts in foreign currency) */
  Vat vatLow = null;

/* Vat high values (amounts in foreign currency) */
  Vat vatHigh = null;

  String externalId = null;

  bool procurationBlock = null;

/* PDF Invoice as Base64 string */
  String invoicePdf = null;

  List<PurchaseInvoiceLine> purchaseInvoiceLines = [];

  List<MatchInternalInvoice> internalInvoiceLines = [];

  PurchaseInvoice();

  @override
  String toString() {
    return 'PurchaseInvoice[companyId=$companyId, invoiceId=$invoiceId, bookingDate=$bookingDate, invoiceDate=$invoiceDate, supplierId=$supplierId, supplierInvoiceId=$supplierInvoiceId, currencyId=$currencyId, invoiceTotalAmount=$invoiceTotalAmount, journalEntryDescription=$journalEntryDescription, paymentTerm=$paymentTerm, paymentDiscount=$paymentDiscount, creditRestrictionSurcharge=$creditRestrictionSurcharge, vatZero=$vatZero, vatLow=$vatLow, vatHigh=$vatHigh, externalId=$externalId, procurationBlock=$procurationBlock, invoicePdf=$invoicePdf, purchaseInvoiceLines=$purchaseInvoiceLines, internalInvoiceLines=$internalInvoiceLines, ]';
  }

  PurchaseInvoice.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    invoiceId = json['invoiceId'];
    bookingDate = json['bookingDate'] == null
        ? null
        : DateTime.parse(json['bookingDate']);
    invoiceDate = json['invoiceDate'] == null
        ? null
        : DateTime.parse(json['invoiceDate']);
    supplierId = json['supplierId'];
    supplierInvoiceId = json['supplierInvoiceId'];
    currencyId = json['currencyId'];
    invoiceTotalAmount = json['invoiceTotalAmount'] == null
        ? null
        : json['invoiceTotalAmount'].toDouble();
    journalEntryDescription = json['journalEntryDescription'];
    paymentTerm = json['paymentTerm'];
    paymentDiscount = new PaymentDiscount.fromJson(json['paymentDiscount']);
    creditRestrictionSurcharge = new CreditRestrictionSurcharge.fromJson(
        json['creditRestrictionSurcharge']);
    vatZero = new Vat.fromJson(json['vatZero']);
    vatLow = new Vat.fromJson(json['vatLow']);
    vatHigh = new Vat.fromJson(json['vatHigh']);
    externalId = json['externalId'];
    procurationBlock = json['procurationBlock'];
    invoicePdf = json['invoicePdf'];
    purchaseInvoiceLines =
        PurchaseInvoiceLine.listFromJson(json['purchaseInvoiceLines']);
    internalInvoiceLines =
        MatchInternalInvoice.listFromJson(json['internalInvoiceLines']);
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'invoiceId': invoiceId,
      'bookingDate': bookingDate == null ? '' : bookingDate.toIso8601String(),
      'invoiceDate': invoiceDate == null ? '' : invoiceDate.toIso8601String(),
      'supplierId': supplierId,
      'supplierInvoiceId': supplierInvoiceId,
      'currencyId': currencyId,
      'invoiceTotalAmount': invoiceTotalAmount,
      'journalEntryDescription': journalEntryDescription,
      'paymentTerm': paymentTerm,
      'paymentDiscount': paymentDiscount,
      'creditRestrictionSurcharge': creditRestrictionSurcharge,
      'vatZero': vatZero,
      'vatLow': vatLow,
      'vatHigh': vatHigh,
      'externalId': externalId,
      'procurationBlock': procurationBlock,
      'invoicePdf': invoicePdf,
      'purchaseInvoiceLines': purchaseInvoiceLines,
      'internalInvoiceLines': internalInvoiceLines
    };
  }

  static List<PurchaseInvoice> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<PurchaseInvoice>()
        : json.map((value) => new PurchaseInvoice.fromJson(value)).toList();
  }

  static Map<String, PurchaseInvoice> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PurchaseInvoice>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PurchaseInvoice.fromJson(value));
    }
    return map;
  }
}
