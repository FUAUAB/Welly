# swagger.model.HotlistDetailed

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**storeId** | **int** | StoreId where hotlist is applicable, as retrieved from &lt;a href&#x3D;\&quot;?filter&#x3D;Webshop\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] [default to null]
**hotlistId** | **int** | User login for which hotlist is applicable, as retrieved from &lt;a href&#x3D;\&quot;?filter&#x3D;Webshopuser\&quot;&gt;/api/Webshopuser&lt;/a&gt; | [optional] [default to null]
**description** | **String** | Description of hotlist | [optional] [default to null]
**customerId** | **int** | CustomerId as retrieved from &lt;a href&#x3D;\&quot;?filter&#x3D;Customer\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] [default to null]
**webshopLogin** | **String** | StoreId where order is placed, as retrieved from &lt;a href&#x3D;\&quot;?filter&#x3D;Hotlist\&quot;&gt;/api/Hotlist&lt;/a&gt; | [optional] [default to null]
**products** | **List&lt;String&gt;** | List of productIds from Erp as retrieved from &lt;a href&#x3D;\&quot;?filter&#x3D;Product\&quot;&gt;/api/Product&lt;/a&gt; | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


