part of swagger.api;

class ReturnDelivery {
  int companyId = null;

  int branchId = null;

  int returnMethodId = null;

  DateTime returnDate = null;

/* Number of packages returned */
  int numberOfPackages = null;

/* readyTime in the format (HHmm) (required for UPS pickup) */
  String readyTime = null;

/* closeTime in the format (HHmm) (required for UPS pickup) */
  String closeTime = null;

/* Overweight indicator: true if one package weights more then 32 Kgs (required for UPS pickup) */
  bool overweightIndicatior = null;

/* Residential indicator: Indicates if the pickup address is commercial or residential (required for UPS pickup) */
  bool residentialIndicator = null;

/* Address id as received from <a href=\"?filter=Customer\">/api/Customer/ShippingAddress</a> */
  int addressId = null;

/* Custom address information if not addressId is passed. */
  AddressInformation address = null;

  List<ReturnDeliveryOrder> orders = [];

  ReturnDelivery();

  @override
  String toString() {
    return 'ReturnDelivery[companyId=$companyId, branchId=$branchId, returnMethodId=$returnMethodId, returnDate=$returnDate, numberOfPackages=$numberOfPackages, readyTime=$readyTime, closeTime=$closeTime, overweightIndicatior=$overweightIndicatior, residentialIndicator=$residentialIndicator, addressId=$addressId, address=$address, orders=$orders, ]';
  }

  ReturnDelivery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    branchId = json['branchId'];
    returnMethodId = json['returnMethodId'];
    returnDate =
        json['returnDate'] == null ? null : DateTime.parse(json['returnDate']);
    numberOfPackages = json['numberOfPackages'];
    readyTime = json['readyTime'];
    closeTime = json['closeTime'];
    overweightIndicatior = json['overweightIndicatior'];
    residentialIndicator = json['residentialIndicator'];
    addressId = json['addressId'];
    address = new AddressInformation.fromJson(json['address']);
    orders = ReturnDeliveryOrder.listFromJson(json['orders']);
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'branchId': branchId,
      'returnMethodId': returnMethodId,
      'returnDate': returnDate == null ? '' : returnDate.toIso8601String(),
      'numberOfPackages': numberOfPackages,
      'readyTime': readyTime,
      'closeTime': closeTime,
      'overweightIndicatior': overweightIndicatior,
      'residentialIndicator': residentialIndicator,
      'addressId': addressId,
      'address': address,
      'orders': orders
    };
  }

  static List<ReturnDelivery> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ReturnDelivery>()
        : json.map((value) => new ReturnDelivery.fromJson(value)).toList();
  }

  static Map<String, ReturnDelivery> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReturnDelivery>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ReturnDelivery.fromJson(value));
    }
    return map;
  }
}
