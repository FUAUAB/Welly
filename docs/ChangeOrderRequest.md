# swagger.model.ChangeOrderRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**companyId** | **int** | Company ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/GetAllCompanies\&quot;&gt;/api/Company&lt;/a&gt; | [default to null]
**branchId** | **int** | Branch ID. as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Branch/GetAllBranches\&quot;&gt;/api/Branch&lt;/a&gt; | [default to null]
**orderId** | **int** | Order ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Order\&quot;&gt;/api/Order&lt;/a&gt; | [default to null]
**deliveryInFull** | **bool** | Order should be delivered in full. | [optional] [default to null]
**orderLines** | [**List&lt;OrderLineRequest&gt;**](OrderLineRequest.md) | Underlying OrderLines that should be modified | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


