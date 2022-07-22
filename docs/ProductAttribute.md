# swagger.model.ProductAttribute

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Product Attribute ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/ProductAttributes\&quot;&gt;/api/Product/ProductAttribute&lt;/a&gt; | [optional] [default to null]
**description** | **String** | Product attribute name | [optional] [default to null]
**allowFiltering** | **bool** | Shop can filter on option | [optional] [default to null]
**value** | **String** | Attribute value | [optional] [default to null]
**unit** | **String** | Attribute unit description | [optional] [default to null]
**options** | [**List&lt;ProductAttributeOption&gt;**](ProductAttributeOption.md) | Product attribute options | [optional] [default to []]
**datahash** | **String** | Value of datahash | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


