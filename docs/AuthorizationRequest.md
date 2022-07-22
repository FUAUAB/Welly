# swagger.model.AuthorizationRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**webOrderId** | **String** | Web order ID, as created by webshop | [default to null]
**storeId** | **int** | Store ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.5#/Webshop/Store\&quot;&gt;/api/Webshop&lt;/a&gt; | [default to null]
**customerId** | **int** | Customer ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/GetAllCustomers\&quot;&gt;/api/Customer&lt;/a&gt; | [default to null]
**employeeId** | **int** | Employee ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.4#/Employee/GetCustomerEmployees\&quot;&gt;/api/Employee&lt;/a&gt; | [default to null]
**authorizingCustomerId** | **int** | Customer ID for authorization of order, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/GetAllCustomers\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] [default to null]
**authorizingEmployeeId** | **int** | Employee ID of employee who will authorize the order, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.4#/Employee/GetCustomerEmployees\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] [default to null]
**productIds** | **List&lt;String&gt;** | Product IDs in web order, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/ShopProductInformation\&quot;&gt;/api/Product&lt;/a&gt; | [optional] [default to []]
**quantities** | **List&lt;double&gt;** | Quantities in web order | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


