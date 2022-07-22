part of swagger.api;

class V13BranchAvailabilityResult {
  /* Branch Id, as retrievable from <a href=\"?deepLinking=true#/Branch/Get\">/api/Branch</a> */
  int branchId = null;

/* Branch name */
  String branchName = null;

/* Product quantity available */
  double availability = null;

  V13BranchAvailabilityResult();

  @override
  String toString() {
    return 'V13BranchAvailabilityResult[branchId=$branchId, branchName=$branchName, availability=$availability, ]';
  }

  V13BranchAvailabilityResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    branchId = json['branchId'];
    branchName = json['branchName'];
    availability =
        json['availability'] == null ? null : json['availability'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {
      'branchId': branchId,
      'branchName': branchName,
      'availability': availability
    };
  }

  static List<V13BranchAvailabilityResult> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V13BranchAvailabilityResult>()
        : json
            .map((value) => new V13BranchAvailabilityResult.fromJson(value))
            .toList();
  }

  static Map<String, V13BranchAvailabilityResult> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V13BranchAvailabilityResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V13BranchAvailabilityResult.fromJson(value));
    }
    return map;
  }
}
