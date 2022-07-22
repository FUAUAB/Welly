part of swagger.api;

class SegmentCustomer {
  int customerId = null;

  int marketSegmentId = null;

  int representativeTypeId = null;

  SegmentCustomer();

  @override
  String toString() {
    return 'SegmentCustomer[customerId=$customerId, marketSegmentId=$marketSegmentId, representativeTypeId=$representativeTypeId, ]';
  }

  SegmentCustomer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    customerId = json['customerId'];
    marketSegmentId = json['marketSegmentId'];
    representativeTypeId = json['representativeTypeId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'customerId': customerId,
      'marketSegmentId': marketSegmentId,
      'representativeTypeId': representativeTypeId
    };
  }

  static List<SegmentCustomer> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<SegmentCustomer>()
        : json.map((value) => new SegmentCustomer.fromJson(value)).toList();
  }

  static Map<String, SegmentCustomer> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SegmentCustomer>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new SegmentCustomer.fromJson(value));
    }
    return map;
  }
}
