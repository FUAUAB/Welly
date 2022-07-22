part of swagger.api;

class V12LedgerJournalEntry {
  int branchId = null;
  // range from 1 to 999//
/* Ledger number used to register the supplied amount */
  int ledgerNumber = null;

/* Description to be registered with this entry. */
  String description = null;

/* Ledger journal amount excl. VAT */
  double amount = null;

/* Indicates whether the specified amount should be registerd on the debit or credit side of the ledger journal. */
  String debitCredit = null;
  //enum debitCreditEnum {  Debit,  Credit,  };
  V12LedgerJournalEntry();

  @override
  String toString() {
    return 'V12LedgerJournalEntry[branchId=$branchId, ledgerNumber=$ledgerNumber, description=$description, amount=$amount, debitCredit=$debitCredit, ]';
  }

  V12LedgerJournalEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    branchId = json['branchId'];
    ledgerNumber = json['ledgerNumber'];
    description = json['description'];
    amount = json['amount'] == null ? null : json['amount'].toDouble();
    debitCredit = json['debitCredit'];
  }

  Map<String, dynamic> toJson() {
    return {
      'branchId': branchId,
      'ledgerNumber': ledgerNumber,
      'description': description,
      'amount': amount,
      'debitCredit': debitCredit
    };
  }

  static List<V12LedgerJournalEntry> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V12LedgerJournalEntry>()
        : json
            .map((value) => new V12LedgerJournalEntry.fromJson(value))
            .toList();
  }

  static Map<String, V12LedgerJournalEntry> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V12LedgerJournalEntry>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V12LedgerJournalEntry.fromJson(value));
    }
    return map;
  }
}
