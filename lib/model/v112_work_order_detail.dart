part of swagger.api;

class V112WorkOrderDetail {
  /* WorkOrder ID, as retrievable from <a href=\"?deepLinking=true#/WorkOrder/GetAllWorkOrders\">/api/WorkOrder</a> */
  int orderId = null;

/* WorkOrder line ID */
  int orderLineId = null;

/* Description */
  String description = null;

/* Workorder subline ID */
  int orderSubLineId = null;

/* Linetype: 0=Article, 2=Costs, 3=Text, 4=Composition, 5=Component, 6=Hours */
  int lineType = null;
  //enum lineTypeEnum {  Product,  Special,  Cost,  Text,  Composition,  Component,  Hours,  };
/* Cost for workorder (if work order is of line type 2) */
  CostDetail cost = null;

/* Product for work order (if work order is of line type 0) */
  WorkOrderProduct product = null;

/* Hours for work order (if work order is of line type 6) */
  WorkOrderHours hours = null;

  V112WorkOrderDetail();

  @override
  String toString() {
    return 'V112WorkOrderDetail[orderId=$orderId, orderLineId=$orderLineId, description=$description, orderSubLineId=$orderSubLineId, lineType=$lineType, cost=$cost, product=$product, hours=$hours, ]';
  }

  V112WorkOrderDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    orderId = json['orderId'];
    orderLineId = json['orderLineId'];
    description = json['description'];
    orderSubLineId = json['orderSubLineId'];
    lineType = json['lineType'];
    cost = new CostDetail.fromJson(json['cost']);
    product = new WorkOrderProduct.fromJson(json['product']);
    hours = new WorkOrderHours.fromJson(json['hours']);
  }

  Map<String, dynamic> toJson() {
    return {
      'orderId': orderId,
      'orderLineId': orderLineId,
      'description': description,
      'orderSubLineId': orderSubLineId,
      'lineType': lineType,
      'cost': cost,
      'product': product,
      'hours': hours
    };
  }

  static List<V112WorkOrderDetail> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V112WorkOrderDetail>()
        : json.map((value) => new V112WorkOrderDetail.fromJson(value)).toList();
  }

  static Map<String, V112WorkOrderDetail> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V112WorkOrderDetail>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V112WorkOrderDetail.fromJson(value));
    }
    return map;
  }
}
