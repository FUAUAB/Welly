# swagger.model.DeliveryDetails

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lineId** | **int** |  | [optional] [default to null]
**orderlineId** | **int** |  | [optional] [default to null]
**orderlineChildId** | **int** |  | [optional] [default to null]
**type** | **String** |  | [default to null]
**productId** | **String** | ProductId as retrievable from &lt;a href&#x3D;\&quot;?filter&#x3D;Product\&quot;&gt;/api/Product&lt;/a&gt; | [default to null]
**description** | **String** |  | [default to null]
**quantity** | **double** |  | [default to null]
**invoicedQuantity** | **double** |  | [default to null]
**price** | [**Amount**](Amount.md) |  | [default to null]
**vatTarrif** | **String** | If not specified product default tariff will be used, or High tariff in case of Costs. | [optional] [default to null]
**numberOfSalesUnitPerPrice** | **int** |  | [default to null]
**discountPercentage1** | **double** |  | [default to null]
**discountPercentage2** | **double** |  | [default to null]
**netLineAmount** | [**Amount**](Amount.md) |  | [optional] [default to null]
**discountAmount** | [**Amount**](Amount.md) |  | [optional] [default to null]
**warranty** | **bool** |  | [optional] [default to null]
**documentTypeId** | **int** | DocumentTypeId as retrievable from &lt;a href&#x3D;\&quot;?filter&#x3D;DocumentType\&quot;&gt;/api/DocumentType&lt;/a&gt; | [default to null]
**referencedLineId** | **int** | reference to the linenumber of the calling party | [default to null]
**costTypeId** | **int** | CostTypeId as retrievable from &lt;a href&#x3D;\&quot;?filter&#x3D;CostType\&quot;&gt;/api/CostType&lt;/a&gt; | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


