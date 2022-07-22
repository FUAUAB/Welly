part of swagger.api;

class DeliveryChange {
  /* Sales ordernumber of the ERP */
  int orderId = null;

/* Sequencenumber of this delivery for this specific order */
  int sequenceId = null;

/* Date and time of this change */
  DateTime dateModified = null;

/* Sales ordernumber of the webshop */
  String storeOrderId = null;

/* Shipping method id of the ERP */
  int shippingMethodId = null;

/* Shipping method name of the ERP */
  String shippingMethod = null;

/* Deliverydate as noted in the ERP */
  DateTime deliveryDate = null;

/* The track and trace codes as Mavis received from the WMS */
  List<String> trackAndTraceCodes = [];

  List<DeliveryChangeDetail> details = [];

  DeliveryChange();

  @override
  String toString() {
    return 'DeliveryChange[orderId=$orderId, sequenceId=$sequenceId, dateModified=$dateModified, storeOrderId=$storeOrderId, shippingMethodId=$shippingMethodId, shippingMethod=$shippingMethod, deliveryDate=$deliveryDate, trackAndTraceCodes=$trackAndTraceCodes, details=$details, ]';
  }

  DeliveryChange.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    orderId = json['orderId'];
    sequenceId = json['sequenceId'];
    dateModified = json['dateModified'] == null
        ? null
        : DateTime.parse(json['dateModified']);
    storeOrderId = json['storeOrderId'];
    shippingMethodId = json['shippingMethodId'];
    shippingMethod = json['shippingMethod'];
    deliveryDate = json['deliveryDate'] == null
        ? null
        : DateTime.parse(json['deliveryDate']);
    trackAndTraceCodes = (json['trackAndTraceCodes'] as List)
        .map((item) => item as String)
        .toList();
    details = DeliveryChangeDetail.listFromJson(json['details']);
  }

  Map<String, dynamic> toJson() {
    return {
      'orderId': orderId,
      'sequenceId': sequenceId,
      'dateModified':
          dateModified == null ? '' : dateModified.toIso8601String(),
      'storeOrderId': storeOrderId,
      'shippingMethodId': shippingMethodId,
      'shippingMethod': shippingMethod,
      'deliveryDate':
          deliveryDate == null ? '' : deliveryDate.toIso8601String(),
      'trackAndTraceCodes': trackAndTraceCodes,
      'details': details
    };
  }

  static List<DeliveryChange> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<DeliveryChange>()
        : json.map((value) => new DeliveryChange.fromJson(value)).toList();
  }

  static Map<String, DeliveryChange> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeliveryChange>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new DeliveryChange.fromJson(value));
    }
    return map;
  }
}
