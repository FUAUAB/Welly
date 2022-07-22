part of swagger.api;

class RequestProductPriceList {
  String priceListType = null;
  //enum priceListTypeEnum {  Groeneveld,  Etim,  BranchemodelOld,  BranchemodelNew,  };
/* companyId as received from <a href=\"?filter=Company\">/api/Company</a> */
  int companyId = null;

/* branchId as received from <a href=\"?filter=Branch\">/api/Branch</a> */
  int branchId = null;

/* customerId as received from <a href=\"?filter=Customer\">/api/Customer</a> */
  int customerId = null;

/* projectId as received from <a href=\"?filter=Project\">/api/Project</a> */
  String projectId = null;

/* shippingAddressId as received from <a href=\"?filter=Customer\">/api/Customer</a> */
  int shippingAddressId = null;

/* E-mail address for notitication when pricelist is ready for download */
  String emailAddress = null;

/* storeId as received from <a href=\"?filter=Webshop\">/api/Webshop</a> */
  int storeId = null;

  List<Levels> levels = [];

  RequestProductPriceList();

  @override
  String toString() {
    return 'RequestProductPriceList[priceListType=$priceListType, companyId=$companyId, branchId=$branchId, customerId=$customerId, projectId=$projectId, shippingAddressId=$shippingAddressId, emailAddress=$emailAddress, storeId=$storeId, levels=$levels, ]';
  }

  RequestProductPriceList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    priceListType = json['priceListType'];
    companyId = json['companyId'];
    branchId = json['branchId'];
    customerId = json['customerId'];
    projectId = json['projectId'];
    shippingAddressId = json['shippingAddressId'];
    emailAddress = json['emailAddress'];
    storeId = json['storeId'];
    levels = Levels.listFromJson(json['levels']);
  }

  Map<String, dynamic> toJson() {
    return {
      'priceListType': priceListType,
      'companyId': companyId,
      'branchId': branchId,
      'customerId': customerId,
      'projectId': projectId,
      'shippingAddressId': shippingAddressId,
      'emailAddress': emailAddress,
      'storeId': storeId,
      'levels': levels
    };
  }

  static List<RequestProductPriceList> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<RequestProductPriceList>()
        : json
            .map((value) => new RequestProductPriceList.fromJson(value))
            .toList();
  }

  static Map<String, RequestProductPriceList> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RequestProductPriceList>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new RequestProductPriceList.fromJson(value));
    }
    return map;
  }
}
