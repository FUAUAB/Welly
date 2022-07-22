part of swagger.api;

class DeliveryDetails {
  int lineId = null;

  int orderlineId = null;

  int orderlineChildId = null;

  int type = null;
  //enum typeEnum {  Product,  Special,  Cost,  Text,  Composition,  Component,  Hours,  };
/* ProductId as retrievable from <a href=\"?filter=Product\">/api/Product</a> */
  String productId = null;

  String description = null;

  double quantity = null;

  double invoicedQuantity = null;

/* Quantity for standard packaging of product */
  double standardPackagingQuantity = null;

  Amount price = null;

/* Price for packaging of product */
  double packagingPrice = null;

/* If not specified product default tariff will be used, or High tariff in case of Costs. */
  int vatTarrif = null;
  //enum vatTarrifEnum {  High,  Low,  Zero,  };

  int numberOfSalesUnitPerPrice = null;

  double discountPercentage1 = null;

  double discountPercentage2 = null;

  Amount netLineAmount = null;

  Amount discountAmount = null;

  bool warranty = null;

/* DocumentTypeId as retrievable from <a href=\"?filter=DocumentType\">/api/DocumentType</a> */
  int documentTypeId = null;

/* reference to the linenumber of the calling party */
  int referencedLineId = null;

/* CostTypeId as retrievable from <a href=\"?filter=CostType\">/api/CostType</a> */
  int costTypeId = null;

  DeliveryDetails();

  @override
  String toString() {
    return 'DeliveryDetails[lineId=$lineId, orderlineId=$orderlineId, orderlineChildId=$orderlineChildId, type=$type, productId=$productId, description=$description, quantity=$quantity, invoicedQuantity=$invoicedQuantity, standardPackagingQuantity=$standardPackagingQuantity, price=$price, packagingPrice=$packagingPrice, vatTarrif=$vatTarrif, numberOfSalesUnitPerPrice=$numberOfSalesUnitPerPrice, discountPercentage1=$discountPercentage1, discountPercentage2=$discountPercentage2, netLineAmount=$netLineAmount, discountAmount=$discountAmount, warranty=$warranty, documentTypeId=$documentTypeId, referencedLineId=$referencedLineId, costTypeId=$costTypeId, ]';
  }

  DeliveryDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lineId = json['lineId'];
    orderlineId = json['orderlineId'];
    orderlineChildId = json['orderlineChildId'];
    type = json['type'];
    productId = json['productId'];
    description = json['description'];
    quantity = json['quantity'] == null ? null : json['quantity'].toDouble();
    invoicedQuantity = json['invoicedQuantity'] == null
        ? null
        : json['invoicedQuantity'].toDouble();
    standardPackagingQuantity = json['standardPackagingQuantity'] == null
        ? null
        : json['standardPackagingQuantity'].toDouble();
    price = new Amount.fromJson(json['price']);
    packagingPrice = json['packagingPrice'] == null
        ? null
        : json['packagingPrice'].toDouble();
    vatTarrif = json['vatTarrif'];
    numberOfSalesUnitPerPrice = json['numberOfSalesUnitPerPrice'];
    discountPercentage1 = json['discountPercentage1'] == null
        ? null
        : json['discountPercentage1'].toDouble();
    discountPercentage2 = json['discountPercentage2'] == null
        ? null
        : json['discountPercentage2'].toDouble();
    netLineAmount = new Amount.fromJson(json['netLineAmount']);
    discountAmount = new Amount.fromJson(json['discountAmount']);
    warranty = json['warranty'];
    documentTypeId = json['documentTypeId'];
    referencedLineId = json['referencedLineId'];
    costTypeId = json['costTypeId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'lineId': lineId,
      'orderlineId': orderlineId,
      'orderlineChildId': orderlineChildId,
      'type': type,
      'productId': productId,
      'description': description,
      'quantity': quantity,
      'invoicedQuantity': invoicedQuantity,
      'standardPackagingQuantity': standardPackagingQuantity,
      'price': price,
      'packagingPrice': packagingPrice,
      'vatTarrif': vatTarrif,
      'numberOfSalesUnitPerPrice': numberOfSalesUnitPerPrice,
      'discountPercentage1': discountPercentage1,
      'discountPercentage2': discountPercentage2,
      'netLineAmount': netLineAmount,
      'discountAmount': discountAmount,
      'warranty': warranty,
      'documentTypeId': documentTypeId,
      'referencedLineId': referencedLineId,
      'costTypeId': costTypeId
    };
  }

  static List<DeliveryDetails> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<DeliveryDetails>()
        : json.map((value) => new DeliveryDetails.fromJson(value)).toList();
  }

  static Map<String, DeliveryDetails> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeliveryDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new DeliveryDetails.fromJson(value));
    }
    return map;
  }
}
