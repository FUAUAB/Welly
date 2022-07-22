# swagger.model.ProjectRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customerId** | **int** | Customer ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/GetAllCustomers\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] [default to null]
**projectId** | **String** | Project ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Project/GetAllProjects\&quot;&gt;/api/Project&lt;/a&gt; | [optional] [default to null]
**name** | **String** | Project&#39;s name | [default to null]
**address** | [**V19Address**](V19Address.md) | Address of project | [optional] [default to null]
**contactInformation** | [**ContactInformationRequest**](ContactInformationRequest.md) | Contact information for project | [optional] [default to null]
**status** | **int** | Project status Id | [default to null]
**startDate** | [**DateTime**](DateTime.md) | Start date of project | [optional] [default to null]
**endDate** | [**DateTime**](DateTime.md) | End date of project | [optional] [default to null]
**shippingAddress** | [**V19ShippingAddress**](V19ShippingAddress.md) | Shipping address for project, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/ShippingAddresses\&quot;&gt;/api/Customer/ShippingAddress&lt;/a&gt; | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


