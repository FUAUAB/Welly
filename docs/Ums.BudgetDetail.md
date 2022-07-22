# swagger.model.UmsBudgetDetail

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Budget ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Budget/GetBudgetsForCustomer\&quot;&gt;/api/Budget&lt;/a&gt; | [optional] [default to null]
**description** | **String** | Budget name | [optional] [default to null]
**budgetLimits** | [**List&lt;UmsBudgetLineLimit&gt;**](UmsBudgetLineLimit.md) | Budget limit amounts per category | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


