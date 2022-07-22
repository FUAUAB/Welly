# swagger.model.CustomerProductReferenceRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customerId** | **int** | Customer ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/GetAllCustomers\&quot;&gt;/api/Customer&lt;/a&gt; | [default to null]
**productId** | **String** | Product ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/Get\&quot;&gt;/api/Product&lt;/a&gt; | [default to null]
**customerProductId** | **String** | Customer product ID, as retreivable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/CustomerProductReference/{customerId}\&quot;&gt;/api/Product/CustomerProductReference/{customerId}&lt;/a&gt; | [default to null]
**customerProductDescription** | **String** | Description for customer product | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


