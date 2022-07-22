# swagger.model.OrderLineRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**orderLineId** | **int** | Order line ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Order\&quot;&gt;/api/Order&lt;/a&gt; | [optional] [default to null]
**productId** | **String** | Product ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/ShopProductInformation\&quot;&gt;/api/Product&lt;/a&gt; | [optional] [default to null]
**mutation** | **String** | Required change in order line (0 &#x3D; No Change, 1 &#x3D; Deliver available products and cancel remaining, 2 &#x3D; Cancel order line) | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


