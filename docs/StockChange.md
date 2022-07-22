# swagger.model.StockChange

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**warehouseId** | **int** |  | [default to null]
**product** | [**ProductIdentification**](ProductIdentification.md) | Identification to find the corresponding product, one or multiple ids can be supplied | [default to null]
**warehouseLocation** | **String** |  | [default to null]
**changeQuantity** | **double** | Quantity to be changed. (can be positive or negative) | [default to null]
**stockChangeTypeId** | **int** | Indicates the reason for this stock change | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


