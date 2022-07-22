part of swagger.api;

class WebshopOrder {
  /* Store ID, as retrievable from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop/Store</a> */
  int storeId = null;

/* Company ID, as retrievable from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a> */
  int companyId = null;

/* Branch ID, as retrievable from <a href=\"?deepLinking=true#/Branch/Get\">/api/Branch</a> */
  int branchId = null;

/* Customer ID, as retrievable from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a> */
  int customerId = null;

/* ID of employee who placed order, as retrievable from <a href=\"?deepLinking=true#/Employee/GetCustomerEmployeeById\">/api/Employee</a> */
  int employeeId = null;

/* Delivery address ID, as retrievable from <a href=\"?deepLinking=true#/Shipping/Get\">/api/Shipping</a> */
  int deliveryAddressId = null;

/* Login for user that placed the order */
  String login = null;

/* Products in order */
  List<WebshopProduct> products = [];

/* One-off products / items in order */
  List<Special> specials = [];

/* Compositions in order that differ from basic composition */
  List<Composition> compositions = [];

/* Additional text lines in order */
  List<String> textLines = [];

/* Address information for delivery address */
  AddressInformation deliveryInformation = null;

/* Order identification as entered by customer */
  String customerOrderId = null;

/* Order id as registered in webshop */
  String webshopOrderId = null;

/* Project ID, as retrievable from <a href=\"?deepLinking=true#/Project/Get\">/api/Project</a> */
  String projectId = null;

/* Delivery type */
  int deliveryType = null;
  //enum deliveryTypeEnum {  Pickup,  Deliver,  };
/* Delivery date */
  DateTime deliveryDate = null;

/* Additional comment */
  String note = null;

/* Reference for order, i.e. referred by */
  String orderedBy = null;

/* Contactperson for order. Will be used by ERP to send ERP order confirmation. ID retrievable from <a href=\"?deepLinking=true#/Employee/GetCustomerEmployeeById\">/api/Employee</a> */
  int contactPersonId = null;

/* Has order been paid */
  bool payed = null;

/* Payment condition */
  int paymentCondition = null;

/* Shipping method, as retrievable from <a href=\"?deepLinking=true#/Shipping/Methods/Get\">/api/Shipping</a> */
  PayShipMethod shippingMethod = null;

/* Payment method */
  PayShipMethod paymentMethod = null;

/* Discount received (amount) */
  double discountAmount = null;

/* VAT identification */
  String vaTnumber = null;

/* Origin of order */
  String receptionMethod = null;

/* Deliver order in full */
  bool deliveryInFull = null;

  WebshopOrder();

  @override
  String toString() {
    return 'WebshopOrder[storeId=$storeId, companyId=$companyId, branchId=$branchId, customerId=$customerId, employeeId=$employeeId, deliveryAddressId=$deliveryAddressId, login=$login, products=$products, specials=$specials, compositions=$compositions, textLines=$textLines, deliveryInformation=$deliveryInformation, customerOrderId=$customerOrderId, webshopOrderId=$webshopOrderId, projectId=$projectId, deliveryType=$deliveryType, deliveryDate=$deliveryDate, note=$note, orderedBy=$orderedBy, contactPersonId=$contactPersonId, payed=$payed, paymentCondition=$paymentCondition, shippingMethod=$shippingMethod, paymentMethod=$paymentMethod, discountAmount=$discountAmount, vaTnumber=$vaTnumber, receptionMethod=$receptionMethod, deliveryInFull=$deliveryInFull, ]';
  }

  WebshopOrder.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    storeId = json['storeId'];
    companyId = json['companyId'];
    branchId = json['branchId'];
    customerId = json['customerId'];
    employeeId = json['employeeId'];
    deliveryAddressId = json['deliveryAddressId'];
    login = json['login'];
    products = WebshopProduct.listFromJson(json['products']);
    specials = Special.listFromJson(json['specials']);
    compositions = Composition.listFromJson(json['compositions']);
    textLines =
        (json['textLines'] as List).map((item) => item as String).toList();
    deliveryInformation =
        new AddressInformation.fromJson(json['deliveryInformation']);
    customerOrderId = json['customerOrderId'];
    webshopOrderId = json['webshopOrderId'];
    projectId = json['projectId'];
    deliveryType = json['deliveryType'];
    deliveryDate = json['deliveryDate'] == null
        ? null
        : DateTime.parse(json['deliveryDate']);
    note = json['note'];
    orderedBy = json['orderedBy'];
    contactPersonId = json['contactPersonId'];
    payed = json['payed'];
    paymentCondition = json['paymentCondition'];
    shippingMethod = new PayShipMethod.fromJson(json['shippingMethod']);
    paymentMethod = new PayShipMethod.fromJson(json['paymentMethod']);
    discountAmount = json['discountAmount'] == null
        ? null
        : json['discountAmount'].toDouble();
    vaTnumber = json['vaTnumber'];
    receptionMethod = json['receptionMethod'];
    deliveryInFull = json['deliveryInFull'];
  }

  Map<String, dynamic> toJson() {
    return {
      'storeId': storeId,
      'companyId': companyId,
      'branchId': branchId,
      'customerId': customerId,
      'employeeId': employeeId,
      'deliveryAddressId': deliveryAddressId,
      'login': login,
      'products': products,
      'specials': specials,
      'compositions': compositions,
      'textLines': textLines,
      'deliveryInformation': deliveryInformation,
      'customerOrderId': customerOrderId,
      'webshopOrderId': webshopOrderId,
      'projectId': projectId,
      'deliveryType': deliveryType,
      'deliveryDate':
          deliveryDate == null ? '' : deliveryDate.toIso8601String(),
      'note': note,
      'orderedBy': orderedBy,
      'contactPersonId': contactPersonId,
      'payed': payed,
      'paymentCondition': paymentCondition,
      'shippingMethod': shippingMethod,
      'paymentMethod': paymentMethod,
      'discountAmount': discountAmount,
      'vaTnumber': vaTnumber,
      'receptionMethod': receptionMethod,
      'deliveryInFull': deliveryInFull
    };
  }

  static List<WebshopOrder> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<WebshopOrder>()
        : json.map((value) => new WebshopOrder.fromJson(value)).toList();
  }

  static Map<String, WebshopOrder> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebshopOrder>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new WebshopOrder.fromJson(value));
    }
    return map;
  }
}
