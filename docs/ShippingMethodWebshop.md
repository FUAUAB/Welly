# swagger.model.ShippingMethodWebshop

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Webshop shipping method ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Shipping/ShippingMethodsWebshop\&quot;&gt; Shipping/MethodsWebshop&lt;/a&gt;. | [optional] [default to null]
**erpId** | **int** | Shipping method ID as registered in ERP. A value of -1 indicates that the default shipping method of the customer is applicable. | [optional] [default to null]
**isDefault** | **bool** | Shipping method is the default method. | [optional] [default to null]
**description** | **String** | Description of the shipping method. | [optional] [default to null]
**deliveryCode** | **int** | Delivery code, with 0 &#x3D; delivery note, 1 &#x3D; NPD sticker, 2 &#x3D; DHL3D label, 3 &#x3D; TNT Innight, 4 &#x3D; Ship, 5 &#x3D; DGO-Nedpak, 6 &#x3D; HST, 7 &#x3D; TPG. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


