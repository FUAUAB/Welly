# swagger.model.ReturnDelivery

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**companyId** | **int** |  | [optional] [default to null]
**branchId** | **int** |  | [optional] [default to null]
**returnMethodId** | **int** |  | [optional] [default to null]
**returnDate** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**numberOfPackages** | **int** | Number of packages returned | [optional] [default to null]
**readyTime** | **String** | readyTime in the format (HHmm) (required for UPS pickup) | [optional] [default to null]
**closeTime** | **String** | closeTime in the format (HHmm) (required for UPS pickup) | [optional] [default to null]
**overweightIndicatior** | **bool** | Overweight indicator: true if one package weights more then 32 Kgs (required for UPS pickup) | [optional] [default to null]
**residentialIndicator** | **bool** | Residential indicator: Indicates if the pickup address is commercial or residential (required for UPS pickup) | [optional] [default to null]
**addressId** | **int** | Address id as received from &lt;a href&#x3D;\&quot;?filter&#x3D;Customer\&quot;&gt;/api/Customer/ShippingAddress&lt;/a&gt; | [optional] [default to null]
**address** | [**AddressInformation**](AddressInformation.md) | Custom address information if not addressId is passed. | [optional] [default to null]
**orders** | [**List&lt;ReturnDeliveryOrder&gt;**](ReturnDeliveryOrder.md) |  | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


