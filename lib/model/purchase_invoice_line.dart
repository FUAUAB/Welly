part of swagger.api;

class PurchaseInvoiceLine {
  int ledgerAccountNumber = null;

  String journalEntryDescription = null;

/* Line amount in foreign currency */
  double lineAmount = null;

  int taxCategoryId = null;

  List<CostCentreValue> costCentres = [];

  PurchaseInvoiceLine();

  @override
  String toString() {
    return 'PurchaseInvoiceLine[ledgerAccountNumber=$ledgerAccountNumber, journalEntryDescription=$journalEntryDescription, lineAmount=$lineAmount, taxCategoryId=$taxCategoryId, costCentres=$costCentres, ]';
  }

  PurchaseInvoiceLine.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ledgerAccountNumber = json['ledgerAccountNumber'];
    journalEntryDescription = json['journalEntryDescription'];
    lineAmount =
        json['lineAmount'] == null ? null : json['lineAmount'].toDouble();
    taxCategoryId = json['taxCategoryId'];
    costCentres = CostCentreValue.listFromJson(json['costCentres']);
  }

  Map<String, dynamic> toJson() {
    return {
      'ledgerAccountNumber': ledgerAccountNumber,
      'journalEntryDescription': journalEntryDescription,
      'lineAmount': lineAmount,
      'taxCategoryId': taxCategoryId,
      'costCentres': costCentres
    };
  }

  static List<PurchaseInvoiceLine> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<PurchaseInvoiceLine>()
        : json.map((value) => new PurchaseInvoiceLine.fromJson(value)).toList();
  }

  static Map<String, PurchaseInvoiceLine> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PurchaseInvoiceLine>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PurchaseInvoiceLine.fromJson(value));
    }
    return map;
  }
}
