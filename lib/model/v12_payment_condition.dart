part of swagger.api;

class V12PaymentCondition {
  /* Payment condition ID, as retrievable from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Invoice/PaymentCondition\">/api/Invoice</a> */
  int id = null;

/* Name of Payment condition */
  String description = null;

/* Payment term in days */
  int paymentTerm = null;

/* Period of validity for payment discount in days */
  int paymentDiscountTerm = null;

/* Payment discount in percent */
  double paymentDiscountPercentage = null;

/* Payment discount credit invoice in percent */
  double paymentDiscountPercentageCreditInvoice = null;

/* Credit restriction term in days */
  int creditRestrictionTerm = null;

/* Credit restriction percentage */
  double creditRestrictionPercentage = null;

/* Prepayment code: 0 = None 1 = Cash on Delivery, 2 = Prepayment */
  int prePaymentCode = null;
  //enum prePaymentCodeEnum {  Geen,  Rembours,  Vooruitbetalen,  Contant,  };
  V12PaymentCondition();

  @override
  String toString() {
    return 'V12PaymentCondition[id=$id, description=$description, paymentTerm=$paymentTerm, paymentDiscountTerm=$paymentDiscountTerm, paymentDiscountPercentage=$paymentDiscountPercentage, paymentDiscountPercentageCreditInvoice=$paymentDiscountPercentageCreditInvoice, creditRestrictionTerm=$creditRestrictionTerm, creditRestrictionPercentage=$creditRestrictionPercentage, prePaymentCode=$prePaymentCode, ]';
  }

  V12PaymentCondition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
    paymentTerm = json['paymentTerm'];
    paymentDiscountTerm = json['paymentDiscountTerm'];
    paymentDiscountPercentage = json['paymentDiscountPercentage'] == null
        ? null
        : json['paymentDiscountPercentage'].toDouble();
    paymentDiscountPercentageCreditInvoice =
        json['paymentDiscountPercentageCreditInvoice'] == null
            ? null
            : json['paymentDiscountPercentageCreditInvoice'].toDouble();
    creditRestrictionTerm = json['creditRestrictionTerm'];
    creditRestrictionPercentage = json['creditRestrictionPercentage'] == null
        ? null
        : json['creditRestrictionPercentage'].toDouble();
    prePaymentCode = json['prePaymentCode'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'paymentTerm': paymentTerm,
      'paymentDiscountTerm': paymentDiscountTerm,
      'paymentDiscountPercentage': paymentDiscountPercentage,
      'paymentDiscountPercentageCreditInvoice':
          paymentDiscountPercentageCreditInvoice,
      'creditRestrictionTerm': creditRestrictionTerm,
      'creditRestrictionPercentage': creditRestrictionPercentage,
      'prePaymentCode': prePaymentCode
    };
  }

  static List<V12PaymentCondition> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V12PaymentCondition>()
        : json.map((value) => new V12PaymentCondition.fromJson(value)).toList();
  }

  static Map<String, V12PaymentCondition> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V12PaymentCondition>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V12PaymentCondition.fromJson(value));
    }
    return map;
  }
}
