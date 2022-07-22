# swagger.model.GeneralLedgerAccount

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**legerAccountNumber** | **int** | General ledger account number, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Ledger/GeneralLedgerAccount\&quot;&gt;/api/Ledger&lt;/a&gt; | [optional] [default to null]
**description** | **String** | Description of general ledger account | [optional] [default to null]
**accountKind** | **int** | Kind of account: 0 &#x3D; Normal account, 1 &#x3D; VAT account, 2 &#x3D; Manual entries allowed | [optional] [default to null]
**splitToCostCentres** | **bool** | Entries on this account should be allocated to cost centres | [optional] [default to null]
**constCentre1Required** | **bool** | Allocation to cost centre level 1 is required for this account | [optional] [default to null]
**constCentre2Required** | **bool** | Allocation to cost centre level 2 is required for this account | [optional] [default to null]
**constCentre3Required** | **bool** | Allocation to cost centre level 3 is required for this account | [optional] [default to null]
**constCentre4Required** | **bool** | Allocation to cost centre level 4 is required for this account | [optional] [default to null]
**constCentre5Required** | **bool** | Allocation to cost centre level 5 is required for this account | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


