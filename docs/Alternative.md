# swagger.model.Alternative

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Product ID of alternative product, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/ShopProductInformation\&quot;&gt;/api/Product&lt;/a&gt; | [optional] [default to null]
**type** | **String** | Alternative type, where A &#x3D; alternative and V &#x3D; replacement | [optional] [default to null]
**sequenceId** | **int** | Sequence ID of alternative, in order of preference (1 &#x3D; first preference, 2 &#x3D; second etc.) | [optional] [default to null]
**factor** | **double** | Factor of alternative, i.e. a value of 2 means two alternatives are required to replace 1 product. | [optional] [default to null]
**startDate** | [**DateTime**](DateTime.md) | Start date when alternative is eligible. | [optional] [default to null]
**endDate** | [**DateTime**](DateTime.md) | End date after which alternative is no longere eligible. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


