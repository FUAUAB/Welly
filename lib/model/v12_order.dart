part of swagger.api;

class V12Order {
  /* Order ID as retrievable from <a href=\"?filter=Order\">/api/Order</a> */
  int orderId = null;

/* Store ID where order is placed, as retrievable from <a href=\"?filter=Webshop\">/api/Webshop</a> */
  int storeId = null;

/* Company ID as retrievable from <a href=\"?filter=Company\">/api/Company</a> */
  int companyId = null;

/* Branch ID as retrievable from <a href=\"?filter=Branch\">/api/Branch</a> */
  int branchId = null;

/* Customer ID as retrievable from <a href=\"?filter=Customer\">/api/Customer</a> */
  int customerId = null;

/* Address ID for delivery as retrievable from <a href=\"?filter=Customer\">/api/Customer/ShippingAddress</a> */
  int deliveryAddressId = null;

/* Shippingaddress information if not addressId is passed. */
  V12ShippingAddress shippingInformation = null;

/* Customer for order as retrievable from <a href=\"?filter=Customer\">/api/Customer</a> */
  V12Customer customer = null;

/* Web order ID as submitted by source where order is placed */
  String webOrderId = null;

/* Reference as submitted by customer */
  String customerReference = null;

/* Date when order was placed */
  DateTime orderDate = null;

/* Date when order will be delivered */
  DateTime deliveryDate = null;

/* Currency Id as retrievable from <a href=\"?filter=Currency\">/api/Currency</a> */
  int currencyId = null;

/* Project Id as retrievable from <a href=\"?filter=Project\">/api/Project</a> */
  String projectId = null;

/* Ordernumber as submitted by customer */
  String customerOrderNumber = null;

/* Order details containing all orderlines for order */
  List<V12OrderDetail> orderDetails = [];

/* Total order value */
  Amount orderValue = null;

/* Status of order (Quotation = 0, FinancialMonitoring = 1, MarginCheck = 2, EdiCheck = 3, Active = 4, ReleasedInternalDelivery = 6, Parked = 10, Cancelled = 97, Processed = 98, Blocked =99) */
  int orderStatus = null;
  //enum orderStatusEnum {  Quotation,  FinancialMonitoring,  MarginCheck,  EdiCheck,  Active,  ReleasedInternalDelivery,  Parked,  Cancelled,  Processed,  Blocked,  };
/* Order will be delivered in full. */
  bool deliveryInFull = null;

  V12Order();

  @override
  String toString() {
    return 'V12Order[orderId=$orderId, storeId=$storeId, companyId=$companyId, branchId=$branchId, customerId=$customerId, deliveryAddressId=$deliveryAddressId, shippingInformation=$shippingInformation, customer=$customer, webOrderId=$webOrderId, customerReference=$customerReference, orderDate=$orderDate, deliveryDate=$deliveryDate, currencyId=$currencyId, projectId=$projectId, customerOrderNumber=$customerOrderNumber, orderDetails=$orderDetails, orderValue=$orderValue, orderStatus=$orderStatus, deliveryInFull=$deliveryInFull, ]';
  }

  V12Order.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    orderId = json['orderId'];
    storeId = json['storeId'];
    companyId = json['companyId'];
    branchId = json['branchId'];
    customerId = json['customerId'];
    deliveryAddressId = json['deliveryAddressId'];
    shippingInformation =
        new V12ShippingAddress.fromJson(json['shippingInformation']);
    customer = new V12Customer.fromJson(json['customer']);
    webOrderId = json['webOrderId'];
    customerReference = json['customerReference'];
    orderDate =
        json['orderDate'] == null ? null : DateTime.parse(json['orderDate']);
    deliveryDate = json['deliveryDate'] == null
        ? null
        : DateTime.parse(json['deliveryDate']);
    currencyId = json['currencyId'];
    projectId = json['projectId'];
    customerOrderNumber = json['customerOrderNumber'];
    orderDetails = V12OrderDetail.listFromJson(json['orderDetails']);
    orderValue = new Amount.fromJson(json['orderValue']);
    orderStatus = json['orderStatus'];
    deliveryInFull = json['deliveryInFull'];
  }

  Map<String, dynamic> toJson() {
    return {
      'orderId': orderId,
      'storeId': storeId,
      'companyId': companyId,
      'branchId': branchId,
      'customerId': customerId,
      'deliveryAddressId': deliveryAddressId,
      'shippingInformation': shippingInformation,
      'customer': customer,
      'webOrderId': webOrderId,
      'customerReference': customerReference,
      'orderDate': orderDate == null ? '' : orderDate.toIso8601String(),
      'deliveryDate':
          deliveryDate == null ? '' : deliveryDate.toIso8601String(),
      'currencyId': currencyId,
      'projectId': projectId,
      'customerOrderNumber': customerOrderNumber,
      'orderDetails': orderDetails,
      'orderValue': orderValue,
      'orderStatus': orderStatus,
      'deliveryInFull': deliveryInFull
    };
  }

  static List<V12Order> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V12Order>()
        : json.map((value) => new V12Order.fromJson(value)).toList();
  }

  static Map<String, V12Order> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V12Order>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V12Order.fromJson(value));
    }
    return map;
  }
}
