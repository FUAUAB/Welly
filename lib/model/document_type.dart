part of swagger.api;

class DocumentType {
  int id = null;

  String description = null;

  bool workOffer = null;

  bool offer = null;

  bool orderConfirmation = null;

  bool warehouseReceipt = null;

  bool deliveryNote = null;

  bool invoice = null;

  bool workOrder = null;

  bool warehouseRecieptWorkOrder = null;

  bool counterSubsequentDelivery = null;

  bool returnNote = null;

  bool returnReceipt = null;

  bool toPurchase = null;

  bool purchaseAdvice = null;

  bool offerRequestPurchaseOrder = null;

  bool purchaseOrder = null;

  bool goodsReceipt = null;

  bool internalInvoice = null;

  bool supplierReclamation = null;

  bool productionNote = null;

  DocumentType();

  @override
  String toString() {
    return 'DocumentType[id=$id, description=$description, workOffer=$workOffer, offer=$offer, orderConfirmation=$orderConfirmation, warehouseReceipt=$warehouseReceipt, deliveryNote=$deliveryNote, invoice=$invoice, workOrder=$workOrder, warehouseRecieptWorkOrder=$warehouseRecieptWorkOrder, counterSubsequentDelivery=$counterSubsequentDelivery, returnNote=$returnNote, returnReceipt=$returnReceipt, toPurchase=$toPurchase, purchaseAdvice=$purchaseAdvice, offerRequestPurchaseOrder=$offerRequestPurchaseOrder, purchaseOrder=$purchaseOrder, goodsReceipt=$goodsReceipt, internalInvoice=$internalInvoice, supplierReclamation=$supplierReclamation, productionNote=$productionNote, ]';
  }

  DocumentType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
    workOffer = json['workOffer'];
    offer = json['offer'];
    orderConfirmation = json['orderConfirmation'];
    warehouseReceipt = json['warehouseReceipt'];
    deliveryNote = json['deliveryNote'];
    invoice = json['invoice'];
    workOrder = json['workOrder'];
    warehouseRecieptWorkOrder = json['warehouseRecieptWorkOrder'];
    counterSubsequentDelivery = json['counterSubsequentDelivery'];
    returnNote = json['returnNote'];
    returnReceipt = json['returnReceipt'];
    toPurchase = json['toPurchase'];
    purchaseAdvice = json['purchaseAdvice'];
    offerRequestPurchaseOrder = json['offerRequestPurchaseOrder'];
    purchaseOrder = json['purchaseOrder'];
    goodsReceipt = json['goodsReceipt'];
    internalInvoice = json['internalInvoice'];
    supplierReclamation = json['supplierReclamation'];
    productionNote = json['productionNote'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'workOffer': workOffer,
      'offer': offer,
      'orderConfirmation': orderConfirmation,
      'warehouseReceipt': warehouseReceipt,
      'deliveryNote': deliveryNote,
      'invoice': invoice,
      'workOrder': workOrder,
      'warehouseRecieptWorkOrder': warehouseRecieptWorkOrder,
      'counterSubsequentDelivery': counterSubsequentDelivery,
      'returnNote': returnNote,
      'returnReceipt': returnReceipt,
      'toPurchase': toPurchase,
      'purchaseAdvice': purchaseAdvice,
      'offerRequestPurchaseOrder': offerRequestPurchaseOrder,
      'purchaseOrder': purchaseOrder,
      'goodsReceipt': goodsReceipt,
      'internalInvoice': internalInvoice,
      'supplierReclamation': supplierReclamation,
      'productionNote': productionNote
    };
  }

  static List<DocumentType> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<DocumentType>()
        : json.map((value) => new DocumentType.fromJson(value)).toList();
  }

  static Map<String, DocumentType> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DocumentType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new DocumentType.fromJson(value));
    }
    return map;
  }
}
