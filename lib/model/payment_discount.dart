part of swagger.api;

class PaymentDiscount {
  /* Paymentdiscount percentage */
  double percentage = null;

/* Paymentdiscount term in days */
  int term = null;

/* Paymentdiscount amount */
  double amount = null;

  PaymentDiscount();

  @override
  String toString() {
    return 'PaymentDiscount[percentage=$percentage, term=$term, amount=$amount, ]';
  }

  PaymentDiscount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    percentage =
        json['percentage'] == null ? null : json['percentage'].toDouble();
    term = json['term'];
    amount = json['amount'] == null ? null : json['amount'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {'percentage': percentage, 'term': term, 'amount': amount};
  }

  static List<PaymentDiscount> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<PaymentDiscount>()
        : json.map((value) => new PaymentDiscount.fromJson(value)).toList();
  }

  static Map<String, PaymentDiscount> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PaymentDiscount>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PaymentDiscount.fromJson(value));
    }
    return map;
  }
}
