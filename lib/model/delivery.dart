part of swagger.api;

class Delivery {
  /* CompanyId as retrievable from <a href=\"?filter=Company\">/api/Company</a> */
  int companyId = null;

/* BranchId as retrievable from <a href=\"?filter=Branch\">/api/Branch</a> */
  int branchId = null;

/* StoreId where order is placed, as retrievable from <a href=\"?filter=Webshop\">/api/Webshop</a> */
  int storeId = null;

/* OrderId as retrievable from <a href=\"?filter=Order\">/api/Order</a> */
  int orderId = null;

  int deliveryId = null;

/* CustomerId as retrievable from <a href=\"?filter=Customer\">/api/Customer</a> */
  int customerId = null;

  DateTime orderdate = null;

  String customerReference = null;

  DateTime deliveryDate = null;

/* Address id as retrievable from <a href=\"?filter=Customer\">/api/Customer/ShippingAddress</a> */
  int addressId = null;

  String name = null;

  String secondName = null;

  Address address = null;

  String phone = null;

  int type = null;
  //enum typeEnum {  Invoice,  CreditNote,  };
/* currencyCode as retrievable from <a href=\"?filter=Currency\">/api/Currency</a> */
  int currencyCode = null;

  String customerOrderNumber = null;

  int numberOfPackages = null;

  int numberOfLengths = null;

  int numberOfPallets = null;

  int numberOfEuroPallets = null;

  int numberOfLengthPallets = null;

  double weight = null;

  int numberOfLabels = null;

/* ProjectId as retrievable from <a href=\"?filter=Project\">/api/Project</a> */
  String projectId = null;

/* reference to the ordernumber of the calling party */
  String referencedOrderId = null;

/* Specify the type this delivery originates from. */
  int referringType = null;
  //enum referringTypeEnum {  Unknown,  WorkOrder,  Rental,  };

  String webOrderNumber = null;

/* Total invoice amount */
  Amount deliveryValue = null;

  List<DeliveryDetails> lines = [];

  Delivery();

  @override
  String toString() {
    return 'Delivery[companyId=$companyId, branchId=$branchId, storeId=$storeId, orderId=$orderId, deliveryId=$deliveryId, customerId=$customerId, orderdate=$orderdate, customerReference=$customerReference, deliveryDate=$deliveryDate, addressId=$addressId, name=$name, secondName=$secondName, address=$address, phone=$phone, type=$type, currencyCode=$currencyCode, customerOrderNumber=$customerOrderNumber, numberOfPackages=$numberOfPackages, numberOfLengths=$numberOfLengths, numberOfPallets=$numberOfPallets, numberOfEuroPallets=$numberOfEuroPallets, numberOfLengthPallets=$numberOfLengthPallets, weight=$weight, numberOfLabels=$numberOfLabels, projectId=$projectId, referencedOrderId=$referencedOrderId, referringType=$referringType, webOrderNumber=$webOrderNumber, deliveryValue=$deliveryValue, lines=$lines, ]';
  }

  Delivery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    branchId = json['branchId'];
    storeId = json['storeId'];
    orderId = json['orderId'];
    deliveryId = json['deliveryId'];
    customerId = json['customerId'];
    orderdate =
        json['orderdate'] == null ? null : DateTime.parse(json['orderdate']);
    customerReference = json['customerReference'];
    deliveryDate = json['deliveryDate'] == null
        ? null
        : DateTime.parse(json['deliveryDate']);
    addressId = json['addressId'];
    name = json['name'];
    secondName = json['secondName'];
    address = new Address.fromJson(json['address']);
    phone = json['phone'];
    type = json['type'];
    currencyCode = json['currencyCode'];
    customerOrderNumber = json['customerOrderNumber'];
    numberOfPackages = json['numberOfPackages'];
    numberOfLengths = json['numberOfLengths'];
    numberOfPallets = json['numberOfPallets'];
    numberOfEuroPallets = json['numberOfEuroPallets'];
    numberOfLengthPallets = json['numberOfLengthPallets'];
    weight = json['weight'] == null ? null : json['weight'].toDouble();
    numberOfLabels = json['numberOfLabels'];
    projectId = json['projectId'];
    referencedOrderId = json['referencedOrderId'];
    referringType = json['referringType'];
    webOrderNumber = json['webOrderNumber'];
    deliveryValue = new Amount.fromJson(json['deliveryValue']);
    lines = DeliveryDetails.listFromJson(json['lines']);
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'branchId': branchId,
      'storeId': storeId,
      'orderId': orderId,
      'deliveryId': deliveryId,
      'customerId': customerId,
      'orderdate': orderdate == null ? '' : orderdate.toIso8601String(),
      'customerReference': customerReference,
      'deliveryDate':
          deliveryDate == null ? '' : deliveryDate.toIso8601String(),
      'addressId': addressId,
      'name': name,
      'secondName': secondName,
      'address': address,
      'phone': phone,
      'type': type,
      'currencyCode': currencyCode,
      'customerOrderNumber': customerOrderNumber,
      'numberOfPackages': numberOfPackages,
      'numberOfLengths': numberOfLengths,
      'numberOfPallets': numberOfPallets,
      'numberOfEuroPallets': numberOfEuroPallets,
      'numberOfLengthPallets': numberOfLengthPallets,
      'weight': weight,
      'numberOfLabels': numberOfLabels,
      'projectId': projectId,
      'referencedOrderId': referencedOrderId,
      'referringType': referringType,
      'webOrderNumber': webOrderNumber,
      'deliveryValue': deliveryValue,
      'lines': lines
    };
  }

  static List<Delivery> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Delivery>()
        : json.map((value) => new Delivery.fromJson(value)).toList();
  }

  static Map<String, Delivery> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Delivery>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Delivery.fromJson(value));
    }
    return map;
  }
}
