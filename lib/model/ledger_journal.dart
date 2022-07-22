part of swagger.api;

class LedgerJournal {
  int companyId = null;
  // range from 1 to 99//

  DateTime ledgerJournalDate = null;

  List<LedgerJournalEntry> ledgerJournalEntries = [];

  LedgerJournal();

  @override
  String toString() {
    return 'LedgerJournal[companyId=$companyId, ledgerJournalDate=$ledgerJournalDate, ledgerJournalEntries=$ledgerJournalEntries, ]';
  }

  LedgerJournal.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    ledgerJournalDate = json['ledgerJournalDate'] == null
        ? null
        : DateTime.parse(json['ledgerJournalDate']);
    ledgerJournalEntries =
        LedgerJournalEntry.listFromJson(json['ledgerJournalEntries']);
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'ledgerJournalDate':
          ledgerJournalDate == null ? '' : ledgerJournalDate.toIso8601String(),
      'ledgerJournalEntries': ledgerJournalEntries
    };
  }

  static List<LedgerJournal> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<LedgerJournal>()
        : json.map((value) => new LedgerJournal.fromJson(value)).toList();
  }

  static Map<String, LedgerJournal> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LedgerJournal>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new LedgerJournal.fromJson(value));
    }
    return map;
  }
}
