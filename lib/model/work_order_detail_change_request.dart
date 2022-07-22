part of swagger.api;

class WorkOrderDetailChangeRequest {
  /* Company ID, as retrievable from <a href=\"?deepLinking=true#/Company/GetAllCompanies\">/api/Company</a> */
  int companyId = null;

/* Branch ID, as retrievable from <a href=\"?deepLinking=true#/Branch/GetAllBranches\">/api/Branch</a> */
  int branchId = null;

/* WorkOrder ID, as retrievable from <a href=\"?deepLinking=true#/WorkOrder/GetAllWorkOrders\">/api/WorkOrder</a> */
  int orderId = null;

/* WorkOrder line ID */
  int orderLineId = null;

/* Workorder subline ID */
  int orderSubLineId = null;

/* Description (applicable if work order is of line type 3) */
  String description = null;

/* Cost for workorder (if work order is of line type 2) */
  CostDetail cost = null;

/* Linetype: 0=Article, 2=Costs, 3=Text, 4=Composition, 6=Hours */
  String lineType = null;
  //enum lineTypeEnum {  Product,  Special,  Cost,  Text,  Composition,  Component,  Hours,  };
/* Product for work order (if work order is of line type 0) */
  WorkOrderProduct product = null;

/* Hours for work order (if work order is of line type 6) */
  WorkOrderHours hours = null;

/* Covered by warranty */
  bool warranty = null;

/* Always take textline (default = true) */
  bool alwaysTakeTextline = null;

/* Ideal packaging allowance applied (default = false) */
  bool idealPackagingAllowanceApplied = null;

  WorkOrderDetailChangeRequest();

  @override
  String toString() {
    return 'WorkOrderDetailChangeRequest[companyId=$companyId, branchId=$branchId, orderId=$orderId, orderLineId=$orderLineId, orderSubLineId=$orderSubLineId, description=$description, cost=$cost, lineType=$lineType, product=$product, hours=$hours, warranty=$warranty, alwaysTakeTextline=$alwaysTakeTextline, idealPackagingAllowanceApplied=$idealPackagingAllowanceApplied, ]';
  }

  WorkOrderDetailChangeRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    branchId = json['branchId'];
    orderId = json['orderId'];
    orderLineId = json['orderLineId'];
    orderSubLineId = json['orderSubLineId'];
    description = json['description'];
    cost = new CostDetail.fromJson(json['cost']);
    lineType = json['lineType'];
    product = new WorkOrderProduct.fromJson(json['product']);
    hours = new WorkOrderHours.fromJson(json['hours']);
    warranty = json['warranty'];
    alwaysTakeTextline = json['alwaysTakeTextline'];
    idealPackagingAllowanceApplied = json['idealPackagingAllowanceApplied'];
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'branchId': branchId,
      'orderId': orderId,
      'orderLineId': orderLineId,
      'orderSubLineId': orderSubLineId,
      'description': description,
      'cost': cost,
      'lineType': lineType,
      'product': product,
      'hours': hours,
      'warranty': warranty,
      'alwaysTakeTextline': alwaysTakeTextline,
      'idealPackagingAllowanceApplied': idealPackagingAllowanceApplied
    };
  }

  static List<WorkOrderDetailChangeRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<WorkOrderDetailChangeRequest>()
        : json
            .map((value) => new WorkOrderDetailChangeRequest.fromJson(value))
            .toList();
  }

  static Map<String, WorkOrderDetailChangeRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkOrderDetailChangeRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new WorkOrderDetailChangeRequest.fromJson(value));
    }
    return map;
  }
}
