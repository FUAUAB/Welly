part of swagger.api;

class WorkOrderDescriptionRequest {
  /* Company ID, as retrievable from <a href=\"?deepLinking=true#/Company/GetAllCompanies\">/api/Company</a> */
  int companyId = null;

/* Branch ID, as retrievable from <a href=\"?deepLinking=true#/Branch/GetAllBranches\">/api/Branch</a> */
  int branchId = null;

/* WorkOrder ID, as retrievable from <a href=\"?deepLinking=true#/WorkOrder/GetAllWorkOrders\">/api/WorkOrder</a> */
  int orderId = null;

/* Work order description */
  String description = null;

  WorkOrderDescriptionRequest();

  @override
  String toString() {
    return 'WorkOrderDescriptionRequest[companyId=$companyId, branchId=$branchId, orderId=$orderId, description=$description, ]';
  }

  WorkOrderDescriptionRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    branchId = json['branchId'];
    orderId = json['orderId'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'branchId': branchId,
      'orderId': orderId,
      'description': description
    };
  }

  static List<WorkOrderDescriptionRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<WorkOrderDescriptionRequest>()
        : json
            .map((value) => new WorkOrderDescriptionRequest.fromJson(value))
            .toList();
  }

  static Map<String, WorkOrderDescriptionRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkOrderDescriptionRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new WorkOrderDescriptionRequest.fromJson(value));
    }
    return map;
  }
}
