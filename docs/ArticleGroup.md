# swagger.model.ArticleGroup

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Id of article group,  as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/ArticleGroup\&quot;&gt;/api/Product/ArticleGroup&lt;/a&gt; | [optional] [default to null]
**description** | **String** | Description of article group | [optional] [default to null]
**ledgerAccountSales** | [**Ledger**](Ledger.md) | Ledger account for Sales | [optional] [default to null]
**ledgerAccountCostPrice** | [**Ledger**](Ledger.md) | Ledger account for cost price of sales | [optional] [default to null]
**ledgerAccountStock** | [**Ledger**](Ledger.md) | Ledger account for stock | [optional] [default to null]
**ledgerAccountStockChanges** | [**Ledger**](Ledger.md) | Ledger account for stock changes | [optional] [default to null]
**ledgerAccountRevaluation** | [**Ledger**](Ledger.md) | Ledger account for revaluation | [optional] [default to null]
**ledgerAccountPriceDifferences** | [**Ledger**](Ledger.md) | Ledger account for price differences | [optional] [default to null]
**ledgerAccountPurchase** | [**Ledger**](Ledger.md) | Ledger account for purchase (optional in ERP) | [optional] [default to null]
**ledgerAccountCashSales** | [**Ledger**](Ledger.md) | Ledger account for cash sales (optional in ERP) | [optional] [default to null]
**ledgerAccountCostPriceCash** | [**Ledger**](Ledger.md) | Ledger account for cost price of cash sales (optional in ERP) | [optional] [default to null]
**ledgerAccountWorkshopSales** | [**Ledger**](Ledger.md) | Ledger account for workshop sales (optional in ERP) | [optional] [default to null]
**ledgerAccountCostPriceWorkshop** | [**Ledger**](Ledger.md) | Ledger account for cost price of workshop sales (optional in ERP) | [optional] [default to null]
**ledgerAccountCalculatedSales** | [**Ledger**](Ledger.md) | Ledger account for calculated sales (optional in ERP) | [optional] [default to null]
**ledgerAccountCalculatedPurchase** | [**Ledger**](Ledger.md) | Ledger account for calculated purchases (optional in ERP) | [optional] [default to null]
**ledgerAccountLaborCoverage** | [**Ledger**](Ledger.md) | Ledger account for coverage of labor (optional in ERP) | [optional] [default to null]
**ledgerAccountPricedSpecials** | [**Ledger**](Ledger.md) | Ledger account for priced specials (optional in ERP) | [optional] [default to null]
**canOrderSingleUnitErp** | **bool** | Items in this group can be ordered as a single item in ERP application | [optional] [default to null]
**canOrderSingleUnitWebshop** | **bool** | Items in this group can be ordered as a single item in webshops | [optional] [default to null]
**canOrderSingleUnitCounter** | **bool** | Items in this group can be ordered as a single item at sales counter | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


