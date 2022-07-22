part of swagger.api;

class V12OrderDetail {
  /* LineId for orderdetail */
  int lineId = null;

/* ChildId for Line */
  int lineChildId = null;

/* Product id as retrievable from <a href=\"?filter=Product\">/api/Product/Product</a> */
  String productId = null;

/* Ordered quantity */
  double orderQuantity = null;

/* Delivered quantity */
  double deliveredQuantity = null;

/* Quantity that is still to be delivered before order is completed */
  double toDeliverQuantity = null;

/* Quantity that is cancelled from original order quantity */
  double cancelledQuantity = null;

/* Quantity that is placed on reservation for delivery */
  double onReservationQuantity = null;

/* Date when delivery is expected */
  DateTime expectedDeliveryDate = null;

/* Description of orderdetail, i.e. productdescription. */
  String description = null;

/* Sales unit description */
  String salesUnit = null;

/* Total value of orderdetail */
  Amount value = null;

/* Price of order detail */
  Amount price = null;

/* VAT Rate for order detail */
  String vatRate = null;
  //enum vatRateEnum {  High,  Low,  Zero,  };
/* Number of sales units per price */
  int numberOfSalesUnitPerPrice = null;

/* Discount rate 1 of order detail in percent */
  double discountRate1 = null;

/* Discount rate 2 of order detail in percent */
  double discountRate2 = null;

/* Discount value */
  Amount discountAmount = null;

/* Warranty on order detail */
  bool warranty = null;

/* DocumentTypeId as retrievable from <a href=\"?filter=DocumentType\">/api/DocumentType</a> */
  int documentTypeId = null;

/* Linetype: 0=Article, 1=Special, 2=Costs, 3=Text, 4=Composition, 5=Composition component, 6=Hours */
  String type = null;
  //enum typeEnum {  Product,  Special,  Cost,  Text,  Composition,  Component,  Hours,  };
  V12OrderDetail();

  @override
  String toString() {
    return 'V12OrderDetail[lineId=$lineId, lineChildId=$lineChildId, productId=$productId, orderQuantity=$orderQuantity, deliveredQuantity=$deliveredQuantity, toDeliverQuantity=$toDeliverQuantity, cancelledQuantity=$cancelledQuantity, onReservationQuantity=$onReservationQuantity, expectedDeliveryDate=$expectedDeliveryDate, description=$description, salesUnit=$salesUnit, value=$value, price=$price, vatRate=$vatRate, numberOfSalesUnitPerPrice=$numberOfSalesUnitPerPrice, discountRate1=$discountRate1, discountRate2=$discountRate2, discountAmount=$discountAmount, warranty=$warranty, documentTypeId=$documentTypeId, type=$type, ]';
  }

  V12OrderDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lineId = json['lineId'];
    lineChildId = json['lineChildId'];
    productId = json['productId'];
    orderQuantity =
        json['orderQuantity'] == null ? null : json['orderQuantity'].toDouble();
    deliveredQuantity = json['deliveredQuantity'] == null
        ? null
        : json['deliveredQuantity'].toDouble();
    toDeliverQuantity = json['toDeliverQuantity'] == null
        ? null
        : json['toDeliverQuantity'].toDouble();
    cancelledQuantity = json['cancelledQuantity'] == null
        ? null
        : json['cancelledQuantity'].toDouble();
    onReservationQuantity = json['onReservationQuantity'] == null
        ? null
        : json['onReservationQuantity'].toDouble();
    expectedDeliveryDate = json['expectedDeliveryDate'] == null
        ? null
        : DateTime.parse(json['expectedDeliveryDate']);
    description = json['description'];
    salesUnit = json['salesUnit'];
    value = new Amount.fromJson(json['value']);
    price = new Amount.fromJson(json['price']);
    vatRate = json['vatRate'];
    numberOfSalesUnitPerPrice = json['numberOfSalesUnitPerPrice'];
    discountRate1 =
        json['discountRate1'] == null ? null : json['discountRate1'].toDouble();
    discountRate2 =
        json['discountRate2'] == null ? null : json['discountRate2'].toDouble();
    discountAmount = new Amount.fromJson(json['discountAmount']);
    warranty = json['warranty'];
    documentTypeId = json['documentTypeId'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'lineId': lineId,
      'lineChildId': lineChildId,
      'productId': productId,
      'orderQuantity': orderQuantity,
      'deliveredQuantity': deliveredQuantity,
      'toDeliverQuantity': toDeliverQuantity,
      'cancelledQuantity': cancelledQuantity,
      'onReservationQuantity': onReservationQuantity,
      'expectedDeliveryDate': expectedDeliveryDate == null
          ? ''
          : expectedDeliveryDate.toIso8601String(),
      'description': description,
      'salesUnit': salesUnit,
      'value': value,
      'price': price,
      'vatRate': vatRate,
      'numberOfSalesUnitPerPrice': numberOfSalesUnitPerPrice,
      'discountRate1': discountRate1,
      'discountRate2': discountRate2,
      'discountAmount': discountAmount,
      'warranty': warranty,
      'documentTypeId': documentTypeId,
      'type': type
    };
  }

  static List<V12OrderDetail> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V12OrderDetail>()
        : json.map((value) => new V12OrderDetail.fromJson(value)).toList();
  }

  static Map<String, V12OrderDetail> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V12OrderDetail>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V12OrderDetail.fromJson(value));
    }
    return map;
  }
}
