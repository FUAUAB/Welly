# swagger.model.UmsModelsBudgetUsage

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Id of budget, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Budget/GetBudgetsForCustomer\&quot;&gt;/api/Budget&lt;/a&gt; | [default to null]
**startDate** | [**DateTime**](DateTime.md) | Start date of budget | [optional] [default to null]
**endDate** | [**DateTime**](DateTime.md) | End date of budget | [optional] [default to null]
**budgetType** | **String** | Type of budget (0 &#x3D; Amount (in currency), 1 &#x3D; Quantity) | [optional] [default to null]
**defaultBudget** | **double** | Budget is default budget for customer | [optional] [default to null]
**budget** | **double** | Budget amount / quantity | [optional] [default to null]
**used** | **double** | Used amount / quantity | [optional] [default to null]
**remaining** | **double** | Remaining amount / quantity in budget | [optional] [default to null]
**takenFromPreviousPeriod** | **double** | Unused Amount quantity from previous budget | [optional] [default to null]
**reasonForChange** | **String** | Reason for change in budget | [optional] [default to null]
**active** | **bool** | Budget is active | [optional] [default to null]
**editable** | **bool** | Budget can be edited | [optional] [default to null]
**name** | **String** | Budget name | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


