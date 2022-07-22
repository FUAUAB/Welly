part of swagger.api;

class V111CustomerEnhanced {
  /* Customer ID, as retrievable from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a> */
  int customerId = null;

/* Search key for customer */
  String searchKey = null;

/* Customer Name */
  String name = null;

/* Customer name extension */
  String secondName = null;

/* Customer visiting address */
  Address address = null;

/* Customer postal address */
  PostOfficeBox postOfficeBox = null;

/* Customer's contactinformation */
  V12ContactInformation contactInformation = null;

/* Customer's shipping addresses */
  List<V19ShippingAddress> shippingAddress = [];

/* Global Location Number of customer */
  String gln = null;

/* ID of customer's language, as retrievable from <a href=\"?deepLinking=true#/Language/Get\">/api/Language</a> */
  int languageId = null;

/* Country (ISO) ID as retrievable from <a href=\"?deepLinking=true#/Country/GetByIso3166\">/api/Country</a> */
  String countryCode = null;

/* Currency ID as retrievable from <a href=\"?deepLinking=true#/Currency/CurrencyCodes\">/api/Currency</a> */
  int currencyCode = null;

/* Rayon ID for customer, as retrievable from <a href=\"?deepLinking=true#/Rayon/Get\">/api/Customer</a> */
  int rayonId = null;

/* Sector ID for customer, as retrievable from <a href=\"?deepLinking=true#/Sector/Get\">/api/Customer</a> */
  int sectorId = null;

/* Customer since this date */
  DateTime customerSince = null;

/* Default branche for customer */
  int defaultBranche = null;

/* Confirmation is required for customer's orders */
  bool confirmationRequired = null;

/* VAT-registration ID for customer */
  String vatId = null;

/* Chamber of Commerce registration ID for customer */
  String chamberOfCommerceId = null;

/* Id of customer at credit insurance company */
  String creditInsuranceId = null;

/* Customer group ID for customer, as retrievable from <a href=\"?deepLinking=true#/CustomerGroup/Get\">/api/Customer</a> */
  int customerGroupId = null;

/* Direct debit is applicable for customer */
  bool directDebit = null;

/* Maximum amount for direct debit */
  double maxDirectDebitAmount = null;

/* Delivery condition, as retrievable from <a href=\"?deepLinking=true#/DeliverCondition/Get\">/api/Customer</a> */
  int deliveryCondition = null;

/* ID of delivery note code, where Free = 0, WithoutPrices = 1,IncludingPrices =2, Cash =3 */
  int deliveryNoteCode = null;
  //enum deliveryNoteCodeEnum {  Free,  WithoutPrices,  IncludingPrices,  Cash,  };
/* Backorders allowed for customer */
  bool backOrdersAllowed = null;

/* Customer receives reminder when applicable */
  bool remindCustomer = null;

/* Maximum credit amount for customer */
  int creditLimit = null;

/* Number of (printed) invoices required by customer */
  int numberOfInvoices = null;

/* Administration fees are charged to customer */
  bool calculateAdministrationFees = null;

/* Payment condition ID, as retrievable from <a href=\"?deepLinking=true#/PaymentCondition\">/api/Customer</a> */
  int paymentCondition = null;

/* Customer can receive collective invoices */
  bool collectiveInvoice = null;

/* Customer's invoices always contain one order */
  bool singleOrderInvoice = null;

/* Orders require customer's order number */
  bool customerOrderNumberRequired = null;

/* Orders require an order reference */
  bool orderReferenceRequired = null;

/* Default shipping method for customer */
  ShippingMethod shippingMethod = null;

/* ID used for calculation of freight costs */
  int freightCostsId = null;

/* Shipping address required for customer */
  bool shippingAddressRequired = null;

/* Invoices will be sent via EDI */
  bool ediInvoices = null;

/* Contact for EDI invoices */
  int ediEmailContact = null;

/* Contact for EDI invoices */
  String ediEmailAddress = null;

/* BIC (Bank Identification Code) */
  String bic = null;

/* IBAN (International Bank Account Number) */
  String iban = null;

/* Customer is a prospect */
  bool isProspect = null;

/* Deliveries in full for customer, no partial deliveries */
  bool deliveryInFull = null;

/* Back orders are delivered in full */
  bool backorderInFull = null;

/* Invoices are only sent after delivery of all orderitems */
  bool invoicedIfComplete = null;

/* Invoiced per order */
  bool invoicedPerOrder = null;

/* Customer will be charged for opened packages */
  bool applySurchargeOpenedPackage = null;

/* Sales employees for customer, as retrievable from <a href=\"?deepLinking=true#/Employees\">/api/Employee</a> */
  List<V12SalesEmployee> salesEmployees = [];

/* Debtor monitoring code, where None = 0, Blocked = 1, DebtCollector = 2 */
  int debtorMonitoringCode = null;
  //enum debtorMonitoringCodeEnum {  None,  Blocked,  DebtCollector,  };
/* Debtor monitoring text */
  String debtorMonitoringText = null;

/* Text Id */
  int textId = null;

/* ID of application that sends edit request */
  int appId = null;
  //enum appIdEnum {  Salesforce,  };
/* External identifcation at partners */
  List<V13ExternalId> externalId = [];

/* Customer has a webshop account */
  bool isWebshopCustomer = null;

/* Customer has a pricelist */
  bool hasPriceList = null;

/* Customer classification */
  String customerClassification = null;

/* Year to Date revenue for customer */
  double annualRevenue = null;

/* Contact persons for customer */
  List<V111CustomerEmployee> contactPersons = [];

  V111CustomerEnhanced();

  @override
  String toString() {
    return 'V111CustomerEnhanced[customerId=$customerId, searchKey=$searchKey, name=$name, secondName=$secondName, address=$address, postOfficeBox=$postOfficeBox, contactInformation=$contactInformation, shippingAddress=$shippingAddress, gln=$gln, languageId=$languageId, countryCode=$countryCode, currencyCode=$currencyCode, rayonId=$rayonId, sectorId=$sectorId, customerSince=$customerSince, defaultBranche=$defaultBranche, confirmationRequired=$confirmationRequired, vatId=$vatId, chamberOfCommerceId=$chamberOfCommerceId, creditInsuranceId=$creditInsuranceId, customerGroupId=$customerGroupId, directDebit=$directDebit, maxDirectDebitAmount=$maxDirectDebitAmount, deliveryCondition=$deliveryCondition, deliveryNoteCode=$deliveryNoteCode, backOrdersAllowed=$backOrdersAllowed, remindCustomer=$remindCustomer, creditLimit=$creditLimit, numberOfInvoices=$numberOfInvoices, calculateAdministrationFees=$calculateAdministrationFees, paymentCondition=$paymentCondition, collectiveInvoice=$collectiveInvoice, singleOrderInvoice=$singleOrderInvoice, customerOrderNumberRequired=$customerOrderNumberRequired, orderReferenceRequired=$orderReferenceRequired, shippingMethod=$shippingMethod, freightCostsId=$freightCostsId, shippingAddressRequired=$shippingAddressRequired, ediInvoices=$ediInvoices, ediEmailContact=$ediEmailContact, ediEmailAddress=$ediEmailAddress, bic=$bic, iban=$iban, isProspect=$isProspect, deliveryInFull=$deliveryInFull, backorderInFull=$backorderInFull, invoicedIfComplete=$invoicedIfComplete, invoicedPerOrder=$invoicedPerOrder, applySurchargeOpenedPackage=$applySurchargeOpenedPackage, salesEmployees=$salesEmployees, debtorMonitoringCode=$debtorMonitoringCode, debtorMonitoringText=$debtorMonitoringText, textId=$textId, appId=$appId, externalId=$externalId, isWebshopCustomer=$isWebshopCustomer, hasPriceList=$hasPriceList, customerClassification=$customerClassification, annualRevenue=$annualRevenue, contactPersons=$contactPersons, ]';
  }

  V111CustomerEnhanced.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    customerId = json['customerId'];
    searchKey = json['searchKey'];
    name = json['name'];
    secondName = json['secondName'];
    address = new Address.fromJson(json['address']);
    postOfficeBox = new PostOfficeBox.fromJson(json['postOfficeBox']);
    contactInformation =
        new V12ContactInformation.fromJson(json['contactInformation']);
    shippingAddress = V19ShippingAddress.listFromJson(json['shippingAddress']);
    gln = json['gln'];
    languageId = json['languageId'];
    countryCode = json['countryCode'];
    currencyCode = json['currencyCode'];
    rayonId = json['rayonId'];
    sectorId = json['sectorId'];
    customerSince = json['customerSince'] == null
        ? null
        : DateTime.parse(json['customerSince']);
    defaultBranche = json['defaultBranche'];
    confirmationRequired = json['confirmationRequired'];
    vatId = json['vatId'];
    chamberOfCommerceId = json['chamberOfCommerceId'];
    creditInsuranceId = json['creditInsuranceId'];
    customerGroupId = json['customerGroupId'];
    directDebit = json['directDebit'];
    maxDirectDebitAmount = json['maxDirectDebitAmount'] == null
        ? null
        : json['maxDirectDebitAmount'].toDouble();
    deliveryCondition = json['deliveryCondition'];
    deliveryNoteCode = json['deliveryNoteCode'];
    backOrdersAllowed = json['backOrdersAllowed'];
    remindCustomer = json['remindCustomer'];
    creditLimit = json['creditLimit'];
    numberOfInvoices = json['numberOfInvoices'];
    calculateAdministrationFees = json['calculateAdministrationFees'];
    paymentCondition = json['paymentCondition'];
    collectiveInvoice = json['collectiveInvoice'];
    singleOrderInvoice = json['singleOrderInvoice'];
    customerOrderNumberRequired = json['customerOrderNumberRequired'];
    orderReferenceRequired = json['orderReferenceRequired'];
    shippingMethod = new ShippingMethod.fromJson(json['shippingMethod']);
    freightCostsId = json['freightCostsId'];
    shippingAddressRequired = json['shippingAddressRequired'];
    ediInvoices = json['ediInvoices'];
    ediEmailContact = json['ediEmailContact'];
    ediEmailAddress = json['ediEmailAddress'];
    bic = json['bic'];
    iban = json['iban'];
    isProspect = json['isProspect'];
    deliveryInFull = json['deliveryInFull'];
    backorderInFull = json['backorderInFull'];
    invoicedIfComplete = json['invoicedIfComplete'];
    invoicedPerOrder = json['invoicedPerOrder'];
    applySurchargeOpenedPackage = json['applySurchargeOpenedPackage'];
    salesEmployees = V12SalesEmployee.listFromJson(json['salesEmployees']);
    debtorMonitoringCode = json['debtorMonitoringCode'];
    debtorMonitoringText = json['debtorMonitoringText'];
    textId = json['textId'];
    appId = json['appId'];
    externalId = V13ExternalId.listFromJson(json['externalId']);
    isWebshopCustomer = json['isWebshopCustomer'];
    hasPriceList = json['hasPriceList'];
    customerClassification = json['customerClassification'];
    annualRevenue =
        json['annualRevenue'] == null ? null : json['annualRevenue'].toDouble();
    contactPersons = V111CustomerEmployee.listFromJson(json['contactPersons']);
  }

  Map<String, dynamic> toJson() {
    return {
      'customerId': customerId,
      'searchKey': searchKey,
      'name': name,
      'secondName': secondName,
      'address': address,
      'postOfficeBox': postOfficeBox,
      'contactInformation': contactInformation,
      'shippingAddress': shippingAddress,
      'gln': gln,
      'languageId': languageId,
      'countryCode': countryCode,
      'currencyCode': currencyCode,
      'rayonId': rayonId,
      'sectorId': sectorId,
      'customerSince':
          customerSince == null ? '' : customerSince.toUtc().toIso8601String(),
      'defaultBranche': defaultBranche,
      'confirmationRequired': confirmationRequired,
      'vatId': vatId,
      'chamberOfCommerceId': chamberOfCommerceId,
      'creditInsuranceId': creditInsuranceId,
      'customerGroupId': customerGroupId,
      'directDebit': directDebit,
      'maxDirectDebitAmount': maxDirectDebitAmount,
      'deliveryCondition': deliveryCondition,
      'deliveryNoteCode': deliveryNoteCode,
      'backOrdersAllowed': backOrdersAllowed,
      'remindCustomer': remindCustomer,
      'creditLimit': creditLimit,
      'numberOfInvoices': numberOfInvoices,
      'calculateAdministrationFees': calculateAdministrationFees,
      'paymentCondition': paymentCondition,
      'collectiveInvoice': collectiveInvoice,
      'singleOrderInvoice': singleOrderInvoice,
      'customerOrderNumberRequired': customerOrderNumberRequired,
      'orderReferenceRequired': orderReferenceRequired,
      'shippingMethod': shippingMethod,
      'freightCostsId': freightCostsId,
      'shippingAddressRequired': shippingAddressRequired,
      'ediInvoices': ediInvoices,
      'ediEmailContact': ediEmailContact,
      'ediEmailAddress': ediEmailAddress,
      'bic': bic,
      'iban': iban,
      'isProspect': isProspect,
      'deliveryInFull': deliveryInFull,
      'backorderInFull': backorderInFull,
      'invoicedIfComplete': invoicedIfComplete,
      'invoicedPerOrder': invoicedPerOrder,
      'applySurchargeOpenedPackage': applySurchargeOpenedPackage,
      'salesEmployees': salesEmployees,
      'debtorMonitoringCode': debtorMonitoringCode,
      'debtorMonitoringText': debtorMonitoringText,
      'textId': textId,
      'appId': appId,
      'externalId': externalId,
      'isWebshopCustomer': isWebshopCustomer,
      'hasPriceList': hasPriceList,
      'customerClassification': customerClassification,
      'annualRevenue': annualRevenue,
      'contactPersons': contactPersons
    };
  }

  static List<V111CustomerEnhanced> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V111CustomerEnhanced>()
        : json
            .map((value) => new V111CustomerEnhanced.fromJson(value))
            .toList();
  }

  static Map<String, V111CustomerEnhanced> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V111CustomerEnhanced>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V111CustomerEnhanced.fromJson(value));
    }
    return map;
  }
}
