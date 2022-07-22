# swagger.model.OrderChangeDetail

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | OrderDetailId as created by the ERP | [optional] [default to null]
**storeDetailId** | **int** | Id of order detail as registered in webshop | [optional] [default to null]
**productId** | **String** | Product Id, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/Get\&quot;&gt;/api/Product&lt;/a&gt; | [optional] [default to null]
**quantityOrdered** | **double** | Product quantity as ordered | [optional] [default to null]
**quantityAllocated** | **double** | Product quantity already allocated | [optional] [default to null]
**quantityDelivered** | **double** | Product quantity already delivered | [optional] [default to null]
**quantityCancelled** | **double** | Product quantity that is cancelled | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


