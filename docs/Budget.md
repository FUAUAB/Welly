# swagger.model.Budget

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Id of budget, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Budget/GetBudgetsForCustomer\&quot;&gt;/api/Budget&lt;/a&gt; | [default to null]
**name** | **String** | Name of budget | [optional] [default to null]
**budgetTerms** | **int** | Number of terms during which budget is applicable | [optional] [default to null]
**budgetTermType** | **String** | Type of term (0 &#x3D; Day, 1 &#x3D; Week, 2 &#x3D; Month, 3 &#x3D; Year) | [optional] [default to null]
**budgetType** | **String** | Type of budget (0 &#x3D; Amount (in currency), 1 &#x3D; Quantity) | [optional] [default to null]
**budgetUserType** | **String** | Type of user (User, Authorizer) | [optional] [default to null]
**effectiveDate** | [**DateTime**](DateTime.md) | Date from which budget will be effective | [optional] [default to null]
**budgetDateType** | **String** | Type (Budget, User) for determining end date of Budget. Budget implicates end date is based on effective date of budget, User implicates  end date is based on start date of budget for user | [optional] [default to null]
**hasLimit** | **bool** | Budget has a maximum above which user cannot place an order. | [optional] [default to null]
**limit** | **double** | Maximum amount or quantity a user can order with this budget. | [optional] [default to null]
**canOrderAboveLimit** | **bool** | User can order above limit for this budget (if so, authorization is required) | [optional] [default to null]
**alwaysAuthorizeOrders** | **bool** | All orders require authorization | [optional] [default to null]
**hasMaximumOrderAmount** | **bool** | A maximum amount / quantity per order is applicable for this budget | [optional] [default to null]
**maximumOrderAmount** | **double** | Maximum amount / quantity per order | [optional] [default to null]
**repeatingBudget** | **bool** | Budget will be renewed after expiration | [optional] [default to null]
**repeatUntil** | [**DateTime**](DateTime.md) | Budget will be renewed until set date | [optional] [default to null]
**takeUnspentBudgetToNextPeriod** | **bool** | Unused budget will be transfered to following period | [optional] [default to null]
**maximumUnspentBudget** | **double** | Maximum amount / quantity that can be transfered to following period | [optional] [default to null]
**default_** | **bool** | Budget is default budget for customer | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


