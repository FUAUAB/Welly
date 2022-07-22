part of swagger.api;

class V12Invoice {
  /* CompanyId as retrievable from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a> */
  int companyId = null;
  // range from 1 to 99//
/* BranchId as retrievable from <a href=\"?deepLinking=true#/Branch/Get\">/api/Branch</a> */
  int branchId = null;
  // range from 1 to 999//
/* InvoiceId as retrievable from <a href=\"?filter=Invoice\">/api/Invoice</a> */
  int invoiceNumber = null;
  // range from 1 to 9999999//
/* Status of invoice: 0 = Created, 1 = Paid in full */
  int invoiceStatus = null;
  //enum invoiceStatusEnum {  Created,  PaidFully,  };
/* Invoice total amount incl. VAT */
  Amount invoiceTotalAmount = null;

/* Invoice date */
  DateTime invoiceDate = null;

/* Customer Id, as retrievable from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a> */
  int customerId = null;
  // range from 1 to 9999999//
/* Total amount of goods excl. VAT */
  Amount goodsAmount = null;

/* Total amount of goods excl. VAT */
  Amount costAmount = null;

/* Purchase value of goods */
  Amount purchaseAmount = null;

/* VAT information */
  List<V12Vat> vat = [];

/* Total amount still to be paid */
  Amount outstandingAmount = null;

/* Customer default will be used if not parsed. */
  int paymentDiscountTerm = null;

/* Customer default will be used if not parsed. */
  double paymentDiscountPercentage = null;

/* Will be calculated from paymentDiscountPercentage is not parsed */
  Amount paymentDiscountAmount = null;

/* currencyCode from obtained from Get CurrencyCodes */
  int currencyCode = null;
  // range from 0 to 99//
/* Default rate for the supplied currency wil be used if not parsed. */
  double currencyRate = null;

/* Default will be 'Invoice' if not parsed */
  int invoiceType = null;
  //enum invoiceTypeEnum {  Invoice,  Prepayment,  Credit,  };
/* Number of orders to which this invoice relates. */
  int orderQuantity = null;

/* Invoice to be processed by printer */
  bool processByPrinter = null;

/* Number of times this invoice has been printed */
  int printQuantity = null;

/* Invoice to be processed by EDI */
  bool processbyEdi = null;

/* Number of times this invoice has been processed by EDI */
  int ediQuantity = null;

/* Invoice to be processed by Mailserver */
  bool processByMailServer = null;

/* Number of times this invoice has been sent by Mailserver */
  int mailQuantity = null;

/* Invoice to be processed by print service */
  bool processByPrintservice = null;

/* Default will be 'On account' if not parsed. */
  int paymentMethod = null;
  //enum paymentMethodEnum {  OnAccount,  InCash,  };
/* Project Id, as retrievable from <a href=\"?filter=Project\">/api/Project</a> */
  String projectId = null;

/* Shipping Address Id, as retrievable from <a href=\"?filter=Customer\">/api/Customer</a> */
  int shippingAddresId = null;

/* Country to which invoice is shipped, as retrievable from <a href=\"?filter=Country\">/api/Country</a> */
  Country invoiceCountry = null;

/* VAT Table Id */
  int vatTableId = null;

/* Credit limit term in days */
  int creditLimitTerm = null;

/* Credit limit percentage */
  double creditLimitPercentage = null;

/* Credit limit amount */
  Amount creditLimitAmount = null;

/* Credit limit Base amount */
  Amount creditLimitBaseAmount = null;

/* Invoice discount amount */
  Amount invoiceDiscountAmount = null;

/* Invoice discount in percent */
  double invoiceDiscountPercentage = null;

/* Interest amount */
  Amount interestAmount = null;

/* Deposited Amount */
  Amount depositAmount = null;

/* Customer Id to whom invoice is addressed, as retrievable from <a href=\"?filter=Customer\">/api/Customer</a> */
  int invoiceCustomerId = null;

/* Id of Purchase group */
  int purchaseGroupId = null;

/* Number of issued reminders for invoice */
  int reminderQuantity = null;

/* Is invoice direct debit */
  bool directDebit = null;

/* Is there a dispute for this invoice */
  bool dispute = null;

/* Date when invoice will expire */
  DateTime expirationDate = null;

/* Date of first payment */
  DateTime firstPaymentDate = null;

/* Date of final payment */
  DateTime finalPaymentDate = null;

/* Country Id according to VAT classification, may differ from regular Country Id */
  String countryVatId = null;

/* Customer Id who placed order, as retrievable from <a href=\"?filter=Customer\">/api/Customer</a> */
  int orderCustomerId = null;

/* Fiscal number */
  String fiscalNumber = null;

/* Credit code for invoice: 0 = invoice, 1 = credit note, 2 = correction */
  int creditCode = null;
  //enum creditCodeEnum {  Invoice,  CreditNote,  Correction,  };
/* Progress Invoice Id, as retrievable from <a href=\"?filter=Invoice\">/api/Invoice</a> */
  int progressInvoiceId = null;

/* Id of customer PO */
  String customerPONumber = null;

/* PO Status of invoice: NotApplicable = 0, ToRequest = 5, SendWithoutPONumber = 10, PONumberAvailableInvoiceToBeSend = 15, InvoiceSentPONumberIncluded = 98 */
  int poStatus = null;
  //enum poStatusEnum {  NotApplicable,  ToRequest,  SendWithoutPONumber,  PONumberAvailableInvoiceToBeSend,  InvoiceSentPONumberIncluded,  };
/* Date on which invoice is sent with PO number included */
  DateTime poSendDate = null;

/* Ledger number used to register the invoice amount */
  List<V12LedgerJournalEntry> ledgerJournalEntries = [];

  String userid = null;

/* Invoice for order with internal use */
  bool internal = null;

  V12Invoice();

  @override
  String toString() {
    return 'V12Invoice[companyId=$companyId, branchId=$branchId, invoiceNumber=$invoiceNumber, invoiceStatus=$invoiceStatus, invoiceTotalAmount=$invoiceTotalAmount, invoiceDate=$invoiceDate, customerId=$customerId, goodsAmount=$goodsAmount, costAmount=$costAmount, purchaseAmount=$purchaseAmount, vat=$vat, outstandingAmount=$outstandingAmount, paymentDiscountTerm=$paymentDiscountTerm, paymentDiscountPercentage=$paymentDiscountPercentage, paymentDiscountAmount=$paymentDiscountAmount, currencyCode=$currencyCode, currencyRate=$currencyRate, invoiceType=$invoiceType, orderQuantity=$orderQuantity, processByPrinter=$processByPrinter, printQuantity=$printQuantity, processbyEdi=$processbyEdi, ediQuantity=$ediQuantity, processByMailServer=$processByMailServer, mailQuantity=$mailQuantity, processByPrintservice=$processByPrintservice, paymentMethod=$paymentMethod, projectId=$projectId, shippingAddresId=$shippingAddresId, invoiceCountry=$invoiceCountry, vatTableId=$vatTableId, creditLimitTerm=$creditLimitTerm, creditLimitPercentage=$creditLimitPercentage, creditLimitAmount=$creditLimitAmount, creditLimitBaseAmount=$creditLimitBaseAmount, invoiceDiscountAmount=$invoiceDiscountAmount, invoiceDiscountPercentage=$invoiceDiscountPercentage, interestAmount=$interestAmount, depositAmount=$depositAmount, invoiceCustomerId=$invoiceCustomerId, purchaseGroupId=$purchaseGroupId, reminderQuantity=$reminderQuantity, directDebit=$directDebit, dispute=$dispute, expirationDate=$expirationDate, firstPaymentDate=$firstPaymentDate, finalPaymentDate=$finalPaymentDate, countryVatId=$countryVatId, orderCustomerId=$orderCustomerId, fiscalNumber=$fiscalNumber, creditCode=$creditCode, progressInvoiceId=$progressInvoiceId, customerPONumber=$customerPONumber, poStatus=$poStatus, poSendDate=$poSendDate, ledgerJournalEntries=$ledgerJournalEntries, userid=$userid, internal=$internal, ]';
  }

  V12Invoice.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    branchId = json['branchId'];
    invoiceNumber = json['invoiceNumber'];
    invoiceStatus = json['invoiceStatus'];
    invoiceTotalAmount = new Amount.fromJson(json['invoiceTotalAmount']);
    invoiceDate = json['invoiceDate'] == null
        ? null
        : DateTime.parse(json['invoiceDate']);
    customerId = json['customerId'];
    goodsAmount = new Amount.fromJson(json['goodsAmount']);
    costAmount = new Amount.fromJson(json['costAmount']);
    purchaseAmount = new Amount.fromJson(json['purchaseAmount']);
    vat = V12Vat.listFromJson(json['vat']);
    outstandingAmount = new Amount.fromJson(json['outstandingAmount']);
    paymentDiscountTerm = json['paymentDiscountTerm'];
    paymentDiscountPercentage = json['paymentDiscountPercentage'] == null
        ? null
        : json['paymentDiscountPercentage'].toDouble();
    paymentDiscountAmount = new Amount.fromJson(json['paymentDiscountAmount']);
    currencyCode = json['currencyCode'];
    currencyRate =
        json['currencyRate'] == null ? null : json['currencyRate'].toDouble();
    invoiceType = json['invoiceType'];
    orderQuantity = json['orderQuantity'];
    processByPrinter = json['processByPrinter'];
    printQuantity = json['printQuantity'];
    processbyEdi = json['processbyEdi'];
    ediQuantity = json['ediQuantity'];
    processByMailServer = json['processByMailServer'];
    mailQuantity = json['mailQuantity'];
    processByPrintservice = json['processByPrintservice'];
    paymentMethod = json['paymentMethod'];
    projectId = json['projectId'];
    shippingAddresId = json['shippingAddresId'];
    invoiceCountry = new Country.fromJson(json['invoiceCountry']);
    vatTableId = json['vatTableId'];
    creditLimitTerm = json['creditLimitTerm'];
    creditLimitPercentage = json['creditLimitPercentage'] == null
        ? null
        : json['creditLimitPercentage'].toDouble();
    creditLimitAmount = new Amount.fromJson(json['creditLimitAmount']);
    creditLimitBaseAmount = new Amount.fromJson(json['creditLimitBaseAmount']);
    invoiceDiscountAmount = new Amount.fromJson(json['invoiceDiscountAmount']);
    invoiceDiscountPercentage = json['invoiceDiscountPercentage'] == null
        ? null
        : json['invoiceDiscountPercentage'].toDouble();
    interestAmount = new Amount.fromJson(json['interestAmount']);
    depositAmount = new Amount.fromJson(json['depositAmount']);
    invoiceCustomerId = json['invoiceCustomerId'];
    purchaseGroupId = json['purchaseGroupId'];
    reminderQuantity = json['reminderQuantity'];
    directDebit = json['directDebit'];
    dispute = json['dispute'];
    expirationDate = json['expirationDate'] == null
        ? null
        : DateTime.parse(json['expirationDate']);
    firstPaymentDate = json['firstPaymentDate'] == null
        ? null
        : DateTime.parse(json['firstPaymentDate']);
    finalPaymentDate = json['finalPaymentDate'] == null
        ? null
        : DateTime.parse(json['finalPaymentDate']);
    countryVatId = json['countryVatId'];
    orderCustomerId = json['orderCustomerId'];
    fiscalNumber = json['fiscalNumber'];
    creditCode = json['creditCode'];
    progressInvoiceId = json['progressInvoiceId'];
    customerPONumber = json['customerPONumber'];
    poStatus = json['poStatus'];
    poSendDate =
        json['poSendDate'] == null ? null : DateTime.parse(json['poSendDate']);
    ledgerJournalEntries =
        V12LedgerJournalEntry.listFromJson(json['ledgerJournalEntries']);
    userid = json['userid'];
    internal = json['internal'];
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'branchId': branchId,
      'invoiceNumber': invoiceNumber,
      'invoiceStatus': invoiceStatus,
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
      'processByPrinter': processByPrinter,
      'printQuantity': printQuantity,
      'processbyEdi': processbyEdi,
      'ediQuantity': ediQuantity,
      'processByMailServer': processByMailServer,
      'mailQuantity': mailQuantity,
      'processByPrintservice': processByPrintservice,
      'paymentMethod': paymentMethod,
      'projectId': projectId,
      'shippingAddresId': shippingAddresId,
      'invoiceCountry': invoiceCountry,
      'vatTableId': vatTableId,
      'creditLimitTerm': creditLimitTerm,
      'creditLimitPercentage': creditLimitPercentage,
      'creditLimitAmount': creditLimitAmount,
      'creditLimitBaseAmount': creditLimitBaseAmount,
      'invoiceDiscountAmount': invoiceDiscountAmount,
      'invoiceDiscountPercentage': invoiceDiscountPercentage,
      'interestAmount': interestAmount,
      'depositAmount': depositAmount,
      'invoiceCustomerId': invoiceCustomerId,
      'purchaseGroupId': purchaseGroupId,
      'reminderQuantity': reminderQuantity,
      'directDebit': directDebit,
      'dispute': dispute,
      'expirationDate':
          expirationDate == null ? '' : expirationDate.toIso8601String(),
      'firstPaymentDate':
          firstPaymentDate == null ? '' : firstPaymentDate.toIso8601String(),
      'finalPaymentDate':
          finalPaymentDate == null ? '' : finalPaymentDate.toIso8601String(),
      'countryVatId': countryVatId,
      'orderCustomerId': orderCustomerId,
      'fiscalNumber': fiscalNumber,
      'creditCode': creditCode,
      'progressInvoiceId': progressInvoiceId,
      'customerPONumber': customerPONumber,
      'poStatus': poStatus,
      'poSendDate': poSendDate == null ? '' : poSendDate.toIso8601String(),
      'ledgerJournalEntries': ledgerJournalEntries,
      'userid': userid,
      'internal': internal
    };
  }

  static List<V12Invoice> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V12Invoice>()
        : json.map((value) => new V12Invoice.fromJson(value)).toList();
  }

  static Map<String, V12Invoice> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V12Invoice>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V12Invoice.fromJson(value));
    }
    return map;
  }
}
