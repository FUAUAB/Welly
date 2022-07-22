part of swagger.api;

class MatchInternalInvoice {
  int companyId = null;
  // range from 1 to 99//

  int branchId = null;
  // range from 1 to 999//

  int purchaseId = null;
  // range from 1 to 9999999//

  int deliverySequenceId = null;
  // range from 1 to 999//

  int internalInvoiceLineId = null;

/* Optional if passed directly with UploadPurchaseInvoice */
  String externalId = null;

  double purchasePrice = null;

  double discountPercentage = null;

  double invoicedQuantity = null;

  MatchInternalInvoice();

  @override
  String toString() {
    return 'MatchInternalInvoice[companyId=$companyId, branchId=$branchId, purchaseId=$purchaseId, deliverySequenceId=$deliverySequenceId, internalInvoiceLineId=$internalInvoiceLineId, externalId=$externalId, purchasePrice=$purchasePrice, discountPercentage=$discountPercentage, invoicedQuantity=$invoicedQuantity, ]';
  }

  MatchInternalInvoice.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    branchId = json['branchId'];
    purchaseId = json['purchaseId'];
    deliverySequenceId = json['deliverySequenceId'];
    internalInvoiceLineId = json['internalInvoiceLineId'];
    externalId = json['externalId'];
    purchasePrice =
        json['purchasePrice'] == null ? null : json['purchasePrice'].toDouble();
    discountPercentage = json['discountPercentage'] == null
        ? null
        : json['discountPercentage'].toDouble();
    invoicedQuantity = json['invoicedQuantity'] == null
        ? null
        : json['invoicedQuantity'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'branchId': branchId,
      'purchaseId': purchaseId,
      'deliverySequenceId': deliverySequenceId,
      'internalInvoiceLineId': internalInvoiceLineId,
      'externalId': externalId,
      'purchasePrice': purchasePrice,
      'discountPercentage': discountPercentage,
      'invoicedQuantity': invoicedQuantity
    };
  }

  static List<MatchInternalInvoice> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<MatchInternalInvoice>()
        : json
            .map((value) => new MatchInternalInvoice.fromJson(value))
            .toList();
  }

  static Map<String, MatchInternalInvoice> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MatchInternalInvoice>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new MatchInternalInvoice.fromJson(value));
    }
    return map;
  }
}
