# swagger.model.InternalInvoiceLine

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**internalInvoiceLineId** | **int** |  | [default to null]
**supplierId** | **int** |  | [default to null]
**supplierGroupId** | **int** |  | [default to null]
**productId** | **String** |  | [optional] [default to null]
**supplierProductId** | **String** |  | [optional] [default to null]
**supplierOrganisationProductId** | **String** |  | [optional] [default to null]
**type** | **int** | Type (0&#x3D;Product, 1&#x3D;Special, 2&#x3D;Cost, 3&#x3D;Text) | [optional] [default to null]
**description** | **String** |  | [optional] [default to null]
**taxCategoryId** | **int** | TaxCategoryId (0&#x3D;VatHigh, 1&#x3D;VatLow, 2&#x3D;VatZero) | [optional] [default to null]
**purchaseUnitId** | [**Unit**](Unit.md) |  | [optional] [default to null]
**purchasePriceQuantity** | **int** |  | [optional] [default to null]
**orderQuantity** | **double** |  | [optional] [default to null]
**deliveredQuantity** | **double** |  | [optional] [default to null]
**ledgerAccountNumber** | **int** |  | [optional] [default to null]
**discountPercentage** | **double** |  | [optional] [default to null]
**discountPercentage2** | **double** |  | [optional] [default to null]
**discountPercentage3** | **double** |  | [optional] [default to null]
**purchasePrice** | **double** | Purchase price (before discounts / surcharges) per unit | [optional] [default to null]
**netPrice** | **double** | Net price per unit | [optional] [default to null]
**discountAmount** | **double** |  | [optional] [default to null]
**netLineAmount** | **double** |  | [optional] [default to null]
**zeroPriceAccepted** | **bool** |  | [optional] [default to null]
**receivingEmployee** | [**Employee**](Employee.md) |  | [optional] [default to null]
**purchaser** | [**Employee**](Employee.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


