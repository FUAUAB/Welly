part of swagger.api;

class Invoice {
  /* CompanyId as retrievable from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a> */
  int companyId = null;
  // range from 1 to 99//
/* BranchId as retrievable from <a href=\"?deepLinking=true#/Branch/Get\">/api/Branch</a> */
  int branchId = null;
  // range from 1 to 999//
/* InvoiceId as retrievable from <a href=\"?filter=Invoice\">/api/Invoice</a> */
  int invoiceNumber = null;
  // range from 1 to 9999999//
/* Invoice total amount incl. VAT */
  double invoiceTotalAmount = null;

/* Invoice date */
  DateTime invoiceDate = null;

/* Customer Id, as retrievable from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a> */
  int customerId = null;
  // range from 1 to 9999999//
/* Total amount of goods excl. VAT */
  double goodsAmount = null;

/* Total amount of goods excl. VAT */
  double costAmount = null;

/* Purchase value of goods */
  double purchaseAmount = null;

/* VAT information */
  List<Vat> vat = [];

  double outstandingAmount = null;

/* Customer default will be used if not parsed. */
  int paymentDiscountTerm = null;

/* Customer default will be used if not parsed. */
  double paymentDiscountPercentage = null;

/* Will be calculated from paymentDiscountPercentage is not parsed */
  double paymentDiscountAmount = null;

/* currencyCode from obtained from GetCurrencyCodes */
  int currencyCode = null;
  // range from 0 to 99//
/* Default rate for the supplied currency wil be used if not parsed. */
  double currencyRate = null;

/* Default will be 'Invoice' if not parsed */
  int invoiceType = null;
  //enum invoiceTypeEnum {  Invoice,  Prepayment,  Credit,  };
/* Number of orders to which this invoice relates. */
  int orderQuantity = null;

/* Number of times this invoice has been printed. */
  int printQuantity = null;

/* Default will be 'On account' if not parsed. */
  int paymentMethod = null;
  //enum paymentMethodEnum {  OnAccount,  InCash,  };
/* Ledger number used to register the invoice amount */
  List<LedgerJournalEntry> ledgerJournalEntries = [];

  Invoice();

  @override
  String toString() {
    return 'Invoice[companyId=$companyId, branchId=$branchId, invoiceNumber=$invoiceNumber, invoiceTotalAmount=$invoiceTotalAmount, invoiceDate=$invoiceDate, customerId=$customerId, goodsAmount=$goodsAmount, costAmount=$costAmount, purchaseAmount=$purchaseAmount, vat=$vat, outstandingAmount=$outstandingAmount, paymentDiscountTerm=$paymentDiscountTerm, paymentDiscountPercentage=$paymentDiscountPercentage, paymentDiscountAmount=$paymentDiscountAmount, currencyCode=$currencyCode, currencyRate=$currencyRate, invoiceType=$invoiceType, orderQuantity=$orderQuantity, printQuantity=$printQuantity, paymentMethod=$paymentMethod, ledgerJournalEntries=$ledgerJournalEntries, ]';
  }

  Invoice.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    branchId = json['branchId'];
    invoiceNumber = json['invoiceNumber'];
    invoiceTotalAmount = json['invoiceTotalAmount'] == null
        ? null
        : json['invoiceTotalAmount'].toDouble();
    invoiceDate = json['invoiceDate'] == null
        ? null
        : DateTime.parse(json['invoiceDate']);
    customerId = json['customerId'];
    goodsAmount =
        json['goodsAmount'] == null ? null : json['goodsAmount'].toDouble();
    costAmount =
        json['costAmount'] == null ? null : json['costAmount'].toDouble();
    purchaseAmount = json['purchaseAmount'] == null
        ? null
        : json['purchaseAmount'].toDouble();
    vat = Vat.listFromJson(json['vat']);
    outstandingAmount = json['outstandingAmount'] == null
        ? null
        : json['outstandingAmount'].toDouble();
    paymentDiscountTerm = json['paymentDiscountTerm'];
    paymentDiscountPercentage = json['paymentDiscountPercentage'] == null
        ? null
        : json['paymentDiscountPercentage'].toDouble();
    paymentDiscountAmount = json['paymentDiscountAmount'] == null
        ? null
        : json['paymentDiscountAmount'].toDouble();
    currencyCode = json['currencyCode'];
    currencyRate =
        json['currencyRate'] == null ? null : json['currencyRate'].toDouble();
    invoiceType = json['invoiceType'];
    orderQuantity = json['orderQuantity'];
    printQuantity = json['printQuantity'];
    paymentMethod = json['paymentMethod'];
    ledgerJournalEntries =
        LedgerJournalEntry.listFromJson(json['ledgerJournalEntries']);
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'branchId': branchId,
      'invoiceNumber': invoiceNumber,
      'invoiceTotalAmount': invoiceTotalAmount,
      'invoiceDate': invoiceDate == null ? '' : invoiceDate.toIso8601String(),
      'customerId': customerId,
      'goodsAmount': goodsAmount,
      'costAmount': costAmount,
      'purchaseAmount': purchaseAmount,
      'vat': vat,
      'outstandingAmount': outstandingAmount,
      'paymentDiscountTerm': paymentDiscountTerm,
      'paymentDiscountPercentage': paymentDiscountPercentage,
      'paymentDiscountAmount': paymentDiscountAmount,
      'currencyCode': currencyCode,
      'currencyRate': currencyRate,
      'invoiceType': invoiceType,
      'orderQuantity': orderQuantity,
      'printQuantity': printQuantity,
      'paymentMethod': paymentMethod,
      'ledgerJournalEntries': ledgerJournalEntries
    };
  }

  static List<Invoice> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Invoice>()
        : json.map((value) => new Invoice.fromJson(value)).toList();
  }

  static Map<String, Invoice> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Invoice>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Invoice.fromJson(value));
    }
    return map;
  }
}
