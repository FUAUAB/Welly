# swagger.model.OrderChange

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**orderId** | **int** | Order ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Order/Get\&quot;&gt;/api/Order&lt;/a&gt; | [optional] [default to null]
**dateModified** | [**DateTime**](DateTime.md) | Date when order is modified | [optional] [default to null]
**storeOrderId** | **String** | Web order ID as submitted by source where order is placed | [optional] [default to null]
**status** | **String** | Order status, with 5 &#x3D; On hold, 10 &#x3D; Active, 15 &#x3D; Being picked, 20 &#x3D; Partially shipped, 25 &#x3D; Drop shipment, 97 &#x3D; Cancelled, 98 &#x3D; Completed | [optional] [default to null]
**details** | [**List&lt;OrderChangeDetail&gt;**](OrderChangeDetail.md) | Datails for order change | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


