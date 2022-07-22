part of swagger.api;

class PurchaseInvoiceOutstandingAmount {
  int companyId = null;
  // range from 1 to 99//

  int invoiceId = null;
  // range from 1 to 9999999//

  String externalId = null;

  Amount outstandingAmount = null;

  DateTime finalPaymentDate = null;

  PurchaseInvoiceOutstandingAmount();

  @override
  String toString() {
    return 'PurchaseInvoiceOutstandingAmount[companyId=$companyId, invoiceId=$invoiceId, externalId=$externalId, outstandingAmount=$outstandingAmount, finalPaymentDate=$finalPaymentDate, ]';
  }

  PurchaseInvoiceOutstandingAmount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    invoiceId = json['invoiceId'];
    externalId = json['externalId'];
    outstandingAmount = new Amount.fromJson(json['outstandingAmount']);
    finalPaymentDate = json['finalPaymentDate'] == null
        ? null
        : DateTime.parse(json['finalPaymentDate']);
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'invoiceId': invoiceId,
      'externalId': externalId,
      'outstandingAmount': outstandingAmount,
      'finalPaymentDate':
          finalPaymentDate == null ? '' : finalPaymentDate.toIso8601String()
    };
  }

  static List<PurchaseInvoiceOutstandingAmount> listFromJson(
      List<dynamic> json) {
    return json == null
        ? new List<PurchaseInvoiceOutstandingAmount>()
        : json
            .map(
                (value) => new PurchaseInvoiceOutstandingAmount.fromJson(value))
            .toList();
  }

  static Map<String, PurchaseInvoiceOutstandingAmount> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PurchaseInvoiceOutstandingAmount>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PurchaseInvoiceOutstandingAmount.fromJson(value));
    }
    return map;
  }
}
