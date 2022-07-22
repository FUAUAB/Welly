# swagger.model.Delivery

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**companyId** | **int** | CompanyId as retrievable from &lt;a href&#x3D;\&quot;?filter&#x3D;Company\&quot;&gt;/api/Company&lt;/a&gt; | [default to null]
**branchId** | **int** | BranchId as retrievable from &lt;a href&#x3D;\&quot;?filter&#x3D;Branch\&quot;&gt;/api/Branch&lt;/a&gt; | [default to null]
**storeId** | **int** | StoreId where order is placed, as retrievable from &lt;a href&#x3D;\&quot;?filter&#x3D;Webshop\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] [default to null]
**orderId** | **int** | OrderId as retrievable from &lt;a href&#x3D;\&quot;?filter&#x3D;Order\&quot;&gt;/api/Order&lt;/a&gt; | [optional] [default to null]
**deliveryId** | **int** |  | [optional] [default to null]
**customerId** | **int** | CustomerId as retrievable from &lt;a href&#x3D;\&quot;?filter&#x3D;Customer\&quot;&gt;/api/Customer&lt;/a&gt; | [default to null]
**orderdate** | [**DateTime**](DateTime.md) |  | [default to null]
**customerReference** | **String** |  | [default to null]
**deliveryDate** | [**DateTime**](DateTime.md) |  | [default to null]
**addressId** | **int** | Address id as retrievable from &lt;a href&#x3D;\&quot;?filter&#x3D;Customer\&quot;&gt;/api/Customer/ShippingAddress&lt;/a&gt; | [optional] [default to null]
**name** | **String** |  | [default to null]
**secondName** | **String** |  | [optional] [default to null]
**address** | [**Address**](Address.md) |  | [default to null]
**phone** | **String** |  | [optional] [default to null]
**type** | **String** |  | [default to null]
**currencyCode** | **int** | currencyCode as retrievable from &lt;a href&#x3D;\&quot;?filter&#x3D;Currency\&quot;&gt;/api/Currency&lt;/a&gt; | [optional] [default to null]
**customerOrderNumber** | **String** |  | [optional] [default to null]
**numberOfPackages** | **int** |  | [optional] [default to null]
**numberOfLengths** | **int** |  | [optional] [default to null]
**numberOfPallets** | **int** |  | [optional] [default to null]
**numberOfEuroPallets** | **int** |  | [optional] [default to null]
**numberOfLengthPallets** | **int** |  | [optional] [default to null]
**weight** | **double** |  | [optional] [default to null]
**numberOfLabels** | **int** |  | [optional] [default to null]
**projectId** | **String** | ProjectId as retrievable from &lt;a href&#x3D;\&quot;?filter&#x3D;Project\&quot;&gt;/api/Project&lt;/a&gt; | [optional] [default to null]
**referencedOrderId** | **String** | reference to the ordernumber of the calling party | [default to null]
**referringType** | **String** | Specify the type this delivery originates from. | [optional] [default to null]
**webOrderNumber** | **String** |  | [optional] [default to null]
**deliveryValue** | [**Amount**](Amount.md) | Total invoice amount | [optional] [default to null]
**lines** | [**List&lt;DeliveryDetails&gt;**](DeliveryDetails.md) |  | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


