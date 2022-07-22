# swagger.model.DeliveryChange

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**orderId** | **int** | Sales ordernumber of the ERP | [optional] [default to null]
**sequenceId** | **int** | Sequencenumber of this delivery for this specific order | [optional] [default to null]
**dateModified** | [**DateTime**](DateTime.md) | Date and time of this change | [optional] [default to null]
**storeOrderId** | **String** | Sales ordernumber of the webshop | [optional] [default to null]
**shippingMethodId** | **int** | Shipping method id of the ERP | [optional] [default to null]
**shippingMethod** | **String** | Shipping method name of the ERP | [optional] [default to null]
**deliveryDate** | [**DateTime**](DateTime.md) | Deliverydate as noted in the ERP | [optional] [default to null]
**trackAndTraceCodes** | **List&lt;String&gt;** | The track and trace codes as Mavis received from the WMS | [optional] [default to []]
**details** | [**List&lt;DeliveryChangeDetail&gt;**](DeliveryChangeDetail.md) |  | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


