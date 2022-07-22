part of swagger.api;

class WorkOrderRequest {
  /* Company ID, as retrievable from <a href=\"?deepLinking=true#/Company/GetAllCompanies\">/api/Company</a> */
  int companyId = null;

/* Branch ID, as retrievable from <a href=\"?deepLinking=true#/Branch/GetAllBranches\">/api/Branch</a> */
  int branchId = null;

/* Warehouse ID */
  int warehouseId = null;

/* Customer ID, as retrievable from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a> */
  int customerId = null;

/* Product ID, as retrievable from <a href=\"?deepLinking=true#/Product/ShopProductInformation\">/api/Product</a> */
  String productId = null;

/* Project Id, as retrievable from <a href=\"?deepLinking=true#/Project/GetAllProjects\">/api/Project</a>. */
  String projectId = null;

/* Work order date */
  DateTime date = null;

/* Work order description */
  String description = null;

/* Ordernumber as submitted by customer */
  String customerOrderNumber = null;

/* Reference as submitted by customer */
  String customerReference = null;

/* ID of employee who is assigned as sales person for this workorder, as retrievable from <a href=\"?deepLinking=true#/Employee/GetAllCustomerEmployeesV111\">/api/Employee</a> */
  int salesPersonId = null;

/* ID of employee who is assigned to this workorder, as retrievable from <a href=\"?deepLinking=true#/Employee/GetAllCustomerEmployeesV111\">/api/Employee</a> */
  int responsibleEmployeeId = null;

/* Work order classification Id, as retrievable from <a href=\"?deepLinking=true#/WorkOrder/GetWorkOrderClasses\">/api/WorkOrder</a>.   If Id = 0, default of customer will be used. */
  int workOrderClassId = null;

/* Net cash amount of workorder */
  Amount netAmount = null;

/* Estimated costs of  work order */
  Amount estimatedCosts = null;

/* Estimated hours for this work order */
  double estimatedHours = null;

/* Shipping method Id for this order, as retrievable from <a href=\"?deepLinking=true#/Shipping/ShippingMethods\">/api/Shippig</a> */
  int shippingMethodId = null;

/* Shipping address for work order */
  V19ShippingAddress shippingAddress = null;

/* Scheduled dates (from / untill) for workorder */
  Schedule schedule = null;

/* Workorder details */
  List<V112WorkOrderDetail> details = [];

  WorkOrderRequest();

  @override
  String toString() {
    return 'WorkOrderRequest[companyId=$companyId, branchId=$branchId, warehouseId=$warehouseId, customerId=$customerId, productId=$productId, projectId=$projectId, date=$date, description=$description, customerOrderNumber=$customerOrderNumber, customerReference=$customerReference, salesPersonId=$salesPersonId, responsibleEmployeeId=$responsibleEmployeeId, workOrderClassId=$workOrderClassId, netAmount=$netAmount, estimatedCosts=$estimatedCosts, estimatedHours=$estimatedHours, shippingMethodId=$shippingMethodId, shippingAddress=$shippingAddress, schedule=$schedule, details=$details, ]';
  }

  WorkOrderRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    branchId = json['branchId'];
    warehouseId = json['warehouseId'];
    customerId = json['customerId'];
    productId = json['productId'];
    projectId = json['projectId'];
    date = json['date'] == null ? null : DateTime.parse(json['date']);
    description = json['description'];
    customerOrderNumber = json['customerOrderNumber'];
    customerReference = json['customerReference'];
    salesPersonId = json['salesPersonId'];
    responsibleEmployeeId = json['responsibleEmployeeId'];
    workOrderClassId = json['workOrderClassId'];
    netAmount = new Amount.fromJson(json['netAmount']);
    estimatedCosts = new Amount.fromJson(json['estimatedCosts']);
    estimatedHours = json['estimatedHours'] == null
        ? null
        : json['estimatedHours'].toDouble();
    shippingMethodId = json['shippingMethodId'];
    shippingAddress = new V19ShippingAddress.fromJson(json['shippingAddress']);
    schedule = new Schedule.fromJson(json['schedule']);
    details = V112WorkOrderDetail.listFromJson(json['details']);
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'branchId': branchId,
      'warehouseId': warehouseId,
      'customerId': customerId,
      'productId': productId,
      'projectId': projectId,
      'date': date == null ? '' : date.toIso8601String(),
      'description': description,
      'customerOrderNumber': customerOrderNumber,
      'customerReference': customerReference,
      'salesPersonId': salesPersonId,
      'responsibleEmployeeId': responsibleEmployeeId,
      'workOrderClassId': workOrderClassId,
      'netAmount': netAmount,
      'estimatedCosts': estimatedCosts,
      'estimatedHours': estimatedHours,
      'shippingMethodId': shippingMethodId,
      'shippingAddress': shippingAddress,
      'schedule': schedule,
      'details': details
    };
  }

  static List<WorkOrderRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<WorkOrderRequest>()
        : json.map((value) => new WorkOrderRequest.fromJson(value)).toList();
  }

  static Map<String, WorkOrderRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkOrderRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new WorkOrderRequest.fromJson(value));
    }
    return map;
  }
}
