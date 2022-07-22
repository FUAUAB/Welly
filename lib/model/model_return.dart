part of swagger.api;

class ModelReturn {
  int storeId = null;

  int companyId = null;

  int branchId = null;

  int customerId = null;

  int employeeId = null;

  int returnId = null;

  String pickupRequestNumber = null;

  int returnState = null;
  //enum returnStateEnum {  Sale,  Purchase,  Check,  ToReceive,  ExtraCheck,  Canceled,  Processed,  Unknown,  };

  DateTime returnDate = null;

  String returnMethod = null;

  int productCount = null;

  List<ReturnDetail> details = [];

  ModelReturn();

  @override
  String toString() {
    return 'ModelReturn[storeId=$storeId, companyId=$companyId, branchId=$branchId, customerId=$customerId, employeeId=$employeeId, returnId=$returnId, pickupRequestNumber=$pickupRequestNumber, returnState=$returnState, returnDate=$returnDate, returnMethod=$returnMethod, productCount=$productCount, details=$details, ]';
  }

  ModelReturn.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    storeId = json['storeId'];
    companyId = json['companyId'];
    branchId = json['branchId'];
    customerId = json['customerId'];
    employeeId = json['employeeId'];
    returnId = json['returnId'];
    pickupRequestNumber = json['pickupRequestNumber'];
    returnState = json['returnState'];
    returnDate =
        json['returnDate'] == null ? null : DateTime.parse(json['returnDate']);
    returnMethod = json['returnMethod'];
    productCount = json['productCount'];
    details = ReturnDetail.listFromJson(json['details']);
  }

  Map<String, dynamic> toJson() {
    return {
      'storeId': storeId,
      'companyId': companyId,
      'branchId': branchId,
      'customerId': customerId,
      'employeeId': employeeId,
      'returnId': returnId,
      'pickupRequestNumber': pickupRequestNumber,
      'returnState': returnState,
      'returnDate': returnDate == null ? '' : returnDate.toIso8601String(),
      'returnMethod': returnMethod,
      'productCount': productCount,
      'details': details
    };
  }

  static List<ModelReturn> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ModelReturn>()
        : json.map((value) => new ModelReturn.fromJson(value)).toList();
  }

  static Map<String, ModelReturn> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ModelReturn>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ModelReturn.fromJson(value));
    }
    return map;
  }
}
