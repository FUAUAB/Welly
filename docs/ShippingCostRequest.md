# swagger.model.ShippingCostRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**companyId** | **int** | CompanyId as received from &lt;a href&#x3D;\&quot;?filter&#x3D;Company\&quot;&gt;/api/Company&lt;/a&gt; | [optional] [default to null]
**branchId** | **int** | BranchId as received from &lt;a href&#x3D;\&quot;?filter&#x3D;Branch\&quot;&gt;/api/Branch&lt;/a&gt; | [optional] [default to null]
**customerId** | **int** | CustomerId as received from &lt;a href&#x3D;\&quot;?filter&#x3D;Customer\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] [default to null]
**shippingMethodId** | **int** | ShippingMethodId as received from &lt;a href&#x3D;\&quot;?filter&#x3D;Shipping\&quot;&gt;/api/Shipping/Methods&lt;/a&gt;  Optional: if not specified, customers default shippingmethod will be used. | [optional] [default to null]
**deliveryDate** | [**DateTime**](DateTime.md) | Specify the requested dilivery date | [optional] [default to null]
**products** | [**List&lt;ProductQuantity&gt;**](ProductQuantity.md) | Products and quantities to calculate shipping costs for | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


