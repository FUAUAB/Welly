part of swagger.api;

class CompanyDetails {
  /* Company ID, as retrievable from <a href=\"?deepLinking=true#/Company/GetAllCompanies\">/api/Company</a> */
  int companyId = null;

/* Company name */
  String companyName = null;

/* Company visiting address */
  V19Address address = null;

/* Company PO Box */
  PostOfficeBox postOfficeBox = null;

/* Company contact information */
  ContactInformation contactInformation = null;

/* Company fiscal number */
  String fiscalNumber = null;

/* Company Chamber of Commerce Identification */
  String chamberOfCommerceId = null;

/* Company Global Location Number */
  String gln = null;

  CompanyDetails();

  @override
  String toString() {
    return 'CompanyDetails[companyId=$companyId, companyName=$companyName, address=$address, postOfficeBox=$postOfficeBox, contactInformation=$contactInformation, fiscalNumber=$fiscalNumber, chamberOfCommerceId=$chamberOfCommerceId, gln=$gln, ]';
  }

  CompanyDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    companyName = json['companyName'];
    address = new V19Address.fromJson(json['address']);
    postOfficeBox = new PostOfficeBox.fromJson(json['postOfficeBox']);
    contactInformation =
        new ContactInformation.fromJson(json['contactInformation']);
    fiscalNumber = json['fiscalNumber'];
    chamberOfCommerceId = json['chamberOfCommerceId'];
    gln = json['gln'];
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'companyName': companyName,
      'address': address,
      'postOfficeBox': postOfficeBox,
      'contactInformation': contactInformation,
      'fiscalNumber': fiscalNumber,
      'chamberOfCommerceId': chamberOfCommerceId,
      'gln': gln
    };
  }

  static List<CompanyDetails> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CompanyDetails>()
        : json.map((value) => new CompanyDetails.fromJson(value)).toList();
  }

  static Map<String, CompanyDetails> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CompanyDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CompanyDetails.fromJson(value));
    }
    return map;
  }
}
