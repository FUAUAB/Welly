part of swagger.api;

class V13ExternalId {
  /* Partner Identification, with \"SF\" = Salesforce */
  String partnerId = null;

/* Account ID as registered at partner */
  String accountId = null;

  V13ExternalId();

  @override
  String toString() {
    return 'V13ExternalId[partnerId=$partnerId, accountId=$accountId, ]';
  }

  V13ExternalId.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    partnerId = json['partnerId'];
    accountId = json['accountId'];
  }

  Map<String, dynamic> toJson() {
    return {'partnerId': partnerId, 'accountId': accountId};
  }

  static List<V13ExternalId> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V13ExternalId>()
        : json.map((value) => new V13ExternalId.fromJson(value)).toList();
  }

  static Map<String, V13ExternalId> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V13ExternalId>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V13ExternalId.fromJson(value));
    }
    return map;
  }
}
