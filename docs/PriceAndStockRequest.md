# swagger.model.PriceAndStockRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**storeId** | **int** | Store ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Get\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] [default to null]
**companyId** | **int** | Company ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/Get\&quot;&gt;/api/Company&lt;/a&gt; | [optional] [default to null]
**branchId** | **int** | Branch ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Branch/Get\&quot;&gt;/api/Branch&lt;/a&gt; | [optional] [default to null]
**customerId** | **int** | Customer ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] [default to null]
**employeeId** | **int** | Employee ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] [default to null]
**productIds** | **List&lt;String&gt;** | List of product IDs, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/CustomerEmployee/Get\&quot;&gt;/api/Product&lt;/a&gt; | [optional] [default to []]
**quantities** | **List&lt;double&gt;** | List of quantities for product IDs in request | [optional] [default to []]
**attributes** | **List&lt;String&gt;** | List of attrributes for product | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


