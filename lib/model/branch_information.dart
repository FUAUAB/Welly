part of swagger.api;

class BranchInformation {
  /* Company Id, as retrievable from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a> */
  int companyId = null;

/* Branch Id, as retrievable from <a href=\"?deepLinking=true#/Branch/Get\">/api/Branch</a> */
  int branchId = null;

/* Branch name */
  String branchName = null;

/* Branch Address information */
  Address address = null;

/* Contact information for branch */
  ContactInformation contactInformation = null;

/* Global Location Number for Branch */
  String gln = null;

  BranchInformation();

  @override
  String toString() {
    return 'BranchInformation[companyId=$companyId, branchId=$branchId, branchName=$branchName, address=$address, contactInformation=$contactInformation, gln=$gln, ]';
  }

  BranchInformation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    branchId = json['branchId'];
    branchName = json['branchName'];
    address = new Address.fromJson(json['address']);
    contactInformation =
        new ContactInformation.fromJson(json['contactInformation']);
    gln = json['gln'];
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'branchId': branchId,
      'branchName': branchName,
      'address': address,
      'contactInformation': contactInformation,
      'gln': gln
    };
  }

  static List<BranchInformation> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<BranchInformation>()
        : json.map((value) => new BranchInformation.fromJson(value)).toList();
  }

  static Map<String, BranchInformation> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BranchInformation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new BranchInformation.fromJson(value));
    }
    return map;
  }
}
