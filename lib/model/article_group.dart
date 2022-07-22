part of swagger.api;

class ArticleGroup {
  /* Id of article group,  as retrievable from <a href=\"?deepLinking=true#/Product/ArticleGroup\">/api/Product/ArticleGroup</a> */
  int id = null;

/* Description of article group */
  String description = null;

/* Ledger account for Sales */
  Ledger ledgerAccountSales = null;

/* Ledger account for cost price of sales */
  Ledger ledgerAccountCostPrice = null;

/* Ledger account for stock */
  Ledger ledgerAccountStock = null;

/* Ledger account for stock changes */
  Ledger ledgerAccountStockChanges = null;

/* Ledger account for revaluation */
  Ledger ledgerAccountRevaluation = null;

/* Ledger account for price differences */
  Ledger ledgerAccountPriceDifferences = null;

/* Ledger account for purchase (optional in ERP) */
  Ledger ledgerAccountPurchase = null;

/* Ledger account for cash sales (optional in ERP) */
  Ledger ledgerAccountCashSales = null;

/* Ledger account for cost price of cash sales (optional in ERP) */
  Ledger ledgerAccountCostPriceCash = null;

/* Ledger account for workshop sales (optional in ERP) */
  Ledger ledgerAccountWorkshopSales = null;

/* Ledger account for cost price of workshop sales (optional in ERP) */
  Ledger ledgerAccountCostPriceWorkshop = null;

/* Ledger account for calculated sales (optional in ERP) */
  Ledger ledgerAccountCalculatedSales = null;

/* Ledger account for calculated purchases (optional in ERP) */
  Ledger ledgerAccountCalculatedPurchase = null;

/* Ledger account for coverage of labor (optional in ERP) */
  Ledger ledgerAccountLaborCoverage = null;

/* Ledger account for priced specials (optional in ERP) */
  Ledger ledgerAccountPricedSpecials = null;

/* Items in this group can be ordered as a single item in ERP application */
  bool canOrderSingleUnitErp = null;

/* Items in this group can be ordered as a single item in webshops */
  bool canOrderSingleUnitWebshop = null;

/* Items in this group can be ordered as a single item at sales counter */
  bool canOrderSingleUnitCounter = null;

  ArticleGroup();

  @override
  String toString() {
    return 'ArticleGroup[id=$id, description=$description, ledgerAccountSales=$ledgerAccountSales, ledgerAccountCostPrice=$ledgerAccountCostPrice, ledgerAccountStock=$ledgerAccountStock, ledgerAccountStockChanges=$ledgerAccountStockChanges, ledgerAccountRevaluation=$ledgerAccountRevaluation, ledgerAccountPriceDifferences=$ledgerAccountPriceDifferences, ledgerAccountPurchase=$ledgerAccountPurchase, ledgerAccountCashSales=$ledgerAccountCashSales, ledgerAccountCostPriceCash=$ledgerAccountCostPriceCash, ledgerAccountWorkshopSales=$ledgerAccountWorkshopSales, ledgerAccountCostPriceWorkshop=$ledgerAccountCostPriceWorkshop, ledgerAccountCalculatedSales=$ledgerAccountCalculatedSales, ledgerAccountCalculatedPurchase=$ledgerAccountCalculatedPurchase, ledgerAccountLaborCoverage=$ledgerAccountLaborCoverage, ledgerAccountPricedSpecials=$ledgerAccountPricedSpecials, canOrderSingleUnitErp=$canOrderSingleUnitErp, canOrderSingleUnitWebshop=$canOrderSingleUnitWebshop, canOrderSingleUnitCounter=$canOrderSingleUnitCounter, ]';
  }

  ArticleGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
    ledgerAccountSales = new Ledger.fromJson(json['ledgerAccountSales']);
    ledgerAccountCostPrice =
        new Ledger.fromJson(json['ledgerAccountCostPrice']);
    ledgerAccountStock = new Ledger.fromJson(json['ledgerAccountStock']);
    ledgerAccountStockChanges =
        new Ledger.fromJson(json['ledgerAccountStockChanges']);
    ledgerAccountRevaluation =
        new Ledger.fromJson(json['ledgerAccountRevaluation']);
    ledgerAccountPriceDifferences =
        new Ledger.fromJson(json['ledgerAccountPriceDifferences']);
    ledgerAccountPurchase = new Ledger.fromJson(json['ledgerAccountPurchase']);
    ledgerAccountCashSales =
        new Ledger.fromJson(json['ledgerAccountCashSales']);
    ledgerAccountCostPriceCash =
        new Ledger.fromJson(json['ledgerAccountCostPriceCash']);
    ledgerAccountWorkshopSales =
        new Ledger.fromJson(json['ledgerAccountWorkshopSales']);
    ledgerAccountCostPriceWorkshop =
        new Ledger.fromJson(json['ledgerAccountCostPriceWorkshop']);
    ledgerAccountCalculatedSales =
        new Ledger.fromJson(json['ledgerAccountCalculatedSales']);
    ledgerAccountCalculatedPurchase =
        new Ledger.fromJson(json['ledgerAccountCalculatedPurchase']);
    ledgerAccountLaborCoverage =
        new Ledger.fromJson(json['ledgerAccountLaborCoverage']);
    ledgerAccountPricedSpecials =
        new Ledger.fromJson(json['ledgerAccountPricedSpecials']);
    canOrderSingleUnitErp = json['canOrderSingleUnitErp'];
    canOrderSingleUnitWebshop = json['canOrderSingleUnitWebshop'];
    canOrderSingleUnitCounter = json['canOrderSingleUnitCounter'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'ledgerAccountSales': ledgerAccountSales,
      'ledgerAccountCostPrice': ledgerAccountCostPrice,
      'ledgerAccountStock': ledgerAccountStock,
      'ledgerAccountStockChanges': ledgerAccountStockChanges,
      'ledgerAccountRevaluation': ledgerAccountRevaluation,
      'ledgerAccountPriceDifferences': ledgerAccountPriceDifferences,
      'ledgerAccountPurchase': ledgerAccountPurchase,
      'ledgerAccountCashSales': ledgerAccountCashSales,
      'ledgerAccountCostPriceCash': ledgerAccountCostPriceCash,
      'ledgerAccountWorkshopSales': ledgerAccountWorkshopSales,
      'ledgerAccountCostPriceWorkshop': ledgerAccountCostPriceWorkshop,
      'ledgerAccountCalculatedSales': ledgerAccountCalculatedSales,
      'ledgerAccountCalculatedPurchase': ledgerAccountCalculatedPurchase,
      'ledgerAccountLaborCoverage': ledgerAccountLaborCoverage,
      'ledgerAccountPricedSpecials': ledgerAccountPricedSpecials,
      'canOrderSingleUnitErp': canOrderSingleUnitErp,
      'canOrderSingleUnitWebshop': canOrderSingleUnitWebshop,
      'canOrderSingleUnitCounter': canOrderSingleUnitCounter
    };
  }

  static List<ArticleGroup> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ArticleGroup>()
        : json.map((value) => new ArticleGroup.fromJson(value)).toList();
  }

  static Map<String, ArticleGroup> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ArticleGroup>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ArticleGroup.fromJson(value));
    }
    return map;
  }
}
