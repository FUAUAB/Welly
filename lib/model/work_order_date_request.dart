part of swagger.api;

class WorkOrderDateRequest {
  /* Company ID, as retrievable from <a href=\"?deepLinking=true#/Company/GetAllCompanies\">/api/Company</a> */
  int companyId = null;

/* Branch ID, as retrievable from <a href=\"?deepLinking=true#/Branch/GetAllBranches\">/api/Branch</a> */
  int branchId = null;

/* WorkOrder ID, as retrievable from <a href=\"?deepLinking=true#/WorkOrder/GetAllWorkOrders\">/api/WorkOrder</a> */
  int orderId = null;

/* Work order date */
  DateTime date = null;

  WorkOrderDateRequest();

  @override
  String toString() {
    return 'WorkOrderDateRequest[companyId=$companyId, branchId=$branchId, orderId=$orderId, date=$date, ]';
  }

  WorkOrderDateRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    branchId = json['branchId'];
    orderId = json['orderId'];
    date = json['date'] == null ? null : DateTime.parse(json['date']);
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'branchId': branchId,
      'orderId': orderId,
      'date': date == null ? '' : date.toIso8601String()
    };
  }

  static List<WorkOrderDateRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<WorkOrderDateRequest>()
        : json
            .map((value) => new WorkOrderDateRequest.fromJson(value))
            .toList();
  }

  static Map<String, WorkOrderDateRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkOrderDateRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new WorkOrderDateRequest.fromJson(value));
    }
    return map;
  }
}
