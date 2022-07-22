part of swagger.api;

class InternalInvoice {
  int companyId = null;
  // range from 1 to 99//

  int branchId = null;
  // range from 1 to 999//

  int purchaseId = null;
  // range from 1 to 9999999//

  int deliverySequenceId = null;
  // range from 1 to 999//

  List<InternalInvoiceLine> internalInvoiceLines = [];

  InternalInvoice();

  @override
  String toString() {
    return 'InternalInvoice[companyId=$companyId, branchId=$branchId, purchaseId=$purchaseId, deliverySequenceId=$deliverySequenceId, internalInvoiceLines=$internalInvoiceLines, ]';
  }

  InternalInvoice.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    branchId = json['branchId'];
    purchaseId = json['purchaseId'];
    deliverySequenceId = json['deliverySequenceId'];
    internalInvoiceLines =
        InternalInvoiceLine.listFromJson(json['internalInvoiceLines']);
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'branchId': branchId,
      'purchaseId': purchaseId,
      'deliverySequenceId': deliverySequenceId,
      'internalInvoiceLines': internalInvoiceLines
    };
  }

  static List<InternalInvoice> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<InternalInvoice>()
        : json.map((value) => new InternalInvoice.fromJson(value)).toList();
  }

  static Map<String, InternalInvoice> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InternalInvoice>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new InternalInvoice.fromJson(value));
    }
    return map;
  }
}
