# swagger.model.CustomerPriceTier

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **double** | Minimum quantity for which price tier is applicable | [optional] [default to null]
**until** | **double** | Maximum quantity up to which price tier is applicable | [optional] [default to null]
**discount** | **double** | Discount percentage for this price tier | [optional] [default to null]
**discount2** | **double** | Second discount percentage for customer price tier | [optional] [default to null]
**price** | **double** | Applicable price for this price tier | [optional] [default to null]
**multiplicationRequired** | **bool** | (Only in case when customer price tiers are applicable) Price tier only valid as a multiple, else product price tiers are valid. | [optional] [default to null]
**multiplicationQuantity** | **double** | Multiplication quantity for which customer price tier is valid | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


