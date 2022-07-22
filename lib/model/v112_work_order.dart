part of swagger.api;

class V112WorkOrder {
  /* Company ID, as retrievable from <a href=\"?deepLinking=true#/Company/GetAllCompanies\">/api/Company</a> */
  int companyId = null;

/* Branch ID, as retrievable from <a href=\"?deepLinking=true#/Branch/GetAllBranches\">/api/Branch</a> */
  int branchId = null;

/* Warehouse ID */
  int warehouseId = null;

/* Order ID, as retrievable from <a href=\"?deepLinking=true#/WorkOrder/GetAllWorkOrdersV112\">/api/WorkOrder</a> */
  int orderId = null;

/* Customer ID, as retrievable from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a> */
  int customerId = null;

/* Customer name */
  String customerName = null;

/* Product ID, as retrievable from as retrievable from <a href=\"?deepLinking=true#/Product/ShopProductInformation\">/api/Product</a> */
  String productId = null;

/* Project Id, as retrievable from <a href=\"?deepLinking=true#/Project/GetAllProjects\">/api/Project</a>. */
  String projectId = null;

/* Project name */
  String projectName = null;

/* Work order date */
  DateTime date = null;

/* Ordernumber as submitted by customer */
  String customerOrderNumber = null;

/* Reference as submitted by customer */
  String customerReference = null;

/* Estimated costs of the workorder */
  double estimatedCosts = null;

/* Estimated hours for this workorder */
  double estimatedHours = null;

/* Net cash amount of workorder */
  Amount netAmount = null;

/* Status of order, where 10 = Active, 20 = Closed (by invoice) , 25 = Closed (cash payment) , 30 = Cash book processed , 97 = Cancelled, 98 = Processed, 99 = Blocked */
  int status = null;

/* Work order description */
  String description = null;

/* Classification of work order */
  WorkOrderClass workOrderClass = null;

/* Work order type (0=External, 1=Maintenance, 2=Inspection, 3=Internal) */
  int type = null;
  //enum typeEnum {  External,  Maintenance,  Inspection,  Internal,  };
/* ID of employee who is assigned to this workorder, retrievable from <a href=\"?deepLinking=true#/Employee/GetAllCustomerEmployeesV111\">/api/Employee</a> */
  int responsibleEmployeeId = null;

/* Name of employee who is assigned to this workorder */
  String responsibleEmployeeName = null;

/* Shipping method for this order */
  ShippingMethod shippingMethod = null;

/* Shipping address */
  V19ShippingAddress shippingAddress = null;

/* Scheduled dates (from / untill) for workorder */
  Schedule schedule = null;

/* Workorder details */
  List<V112WorkOrderDetail> details = [];

/* Files attached to work order */
  List<AttachedFile> attachedFiles = [];

  V112WorkOrder();

  @override
  String toString() {
    return 'V112WorkOrder[companyId=$companyId, branchId=$branchId, warehouseId=$warehouseId, orderId=$orderId, customerId=$customerId, customerName=$customerName, productId=$productId, projectId=$projectId, projectName=$projectName, date=$date, customerOrderNumber=$customerOrderNumber, customerReference=$customerReference, estimatedCosts=$estimatedCosts, estimatedHours=$estimatedHours, netAmount=$netAmount, status=$status, description=$description, workOrderClass=$workOrderClass, type=$type, responsibleEmployeeId=$responsibleEmployeeId, responsibleEmployeeName=$responsibleEmployeeName, shippingMethod=$shippingMethod, shippingAddress=$shippingAddress, schedule=$schedule, details=$details, attachedFiles=$attachedFiles, ]';
  }

  V112WorkOrder.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    branchId = json['branchId'];
    warehouseId = json['warehouseId'];
    orderId = json['orderId'];
    customerId = json['customerId'];
    customerName = json['customerName'];
    productId = json['productId'];
    projectId = json['projectId'];
    projectName = json['projectName'];
    date = json['date'] == null ? null : DateTime.parse(json['date']);
    customerOrderNumber = json['customerOrderNumber'];
    customerReference = json['customerReference'];
    estimatedCosts = json['estimatedCosts'] == null
        ? null
        : json['estimatedCosts'].toDouble();
    estimatedHours = json['estimatedHours'] == null
        ? null
        : json['estimatedHours'].toDouble();
    netAmount = new Amount.fromJson(json['netAmount']);
    status = json['status'];
    description = json['description'];
    workOrderClass = new WorkOrderClass.fromJson(json['workOrderClass']);
    type = json['type'];
    responsibleEmployeeId = json['responsibleEmployeeId'];
    responsibleEmployeeName = json['responsibleEmployeeName'];
    shippingMethod = new ShippingMethod.fromJson(json['shippingMethod']);
    shippingAddress = new V19ShippingAddress.fromJson(json['shippingAddress']);
    schedule = new Schedule.fromJson(json['schedule']);
    details = V112WorkOrderDetail.listFromJson(json['details']);
    attachedFiles = AttachedFile.listFromJson(json['attachedFiles']);
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'branchId': branchId,
      'warehouseId': warehouseId,
      'orderId': orderId,
      'customerId': customerId,
      'customerName': customerName,
      'productId': productId,
      'projectId': projectId,
      'projectName': projectName,
      'date': date == null ? '' : date.toIso8601String(),
      'customerOrderNumber': customerOrderNumber,
      'customerReference': customerReference,
      'estimatedCosts': estimatedCosts,
      'estimatedHours': estimatedHours,
      'netAmount': netAmount,
      'status': status,
      'description': description,
      'workOrderClass': workOrderClass,
      'type': type,
      'responsibleEmployeeId': responsibleEmployeeId,
      'responsibleEmployeeName': responsibleEmployeeName,
      'shippingMethod': shippingMethod,
      'shippingAddress': shippingAddress,
      'schedule': schedule,
      'details': details,
      'attachedFiles': attachedFiles
    };
  }

  static List<V112WorkOrder> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V112WorkOrder>()
        : json.map((value) => new V112WorkOrder.fromJson(value)).toList();
  }

  static Map<String, V112WorkOrder> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V112WorkOrder>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V112WorkOrder.fromJson(value));
    }
    return map;
  }
}
