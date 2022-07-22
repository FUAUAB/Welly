part of swagger.api;

class LedgerJournalEntry {
  int branchId = null;
  // range from 1 to 999//
/* Ledger number used to register the supplied amount */
  int ledgerNumber = null;

/* Description to be registered with this entry. */
  String description = null;

/* Ledger journal amount excl. VAT */
  double amount = null;

/* Indicates whether the specified amount should be registered on the debit or credit side of the ledger journal. */
  int debitCredit = null;
  //enum debitCreditEnum {  Debit,  Credit,  };
  LedgerJournalEntry();

  @override
  String toString() {
    return 'LedgerJournalEntry[branchId=$branchId, ledgerNumber=$ledgerNumber, description=$description, amount=$amount, debitCredit=$debitCredit, ]';
  }

  LedgerJournalEntry.fromJson(Map<String, dynamic> json) {
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

  static List<LedgerJournalEntry> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<LedgerJournalEntry>()
        : json.map((value) => new LedgerJournalEntry.fromJson(value)).toList();
  }

  static Map<String, LedgerJournalEntry> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LedgerJournalEntry>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new LedgerJournalEntry.fromJson(value));
    }
    return map;
  }
}
