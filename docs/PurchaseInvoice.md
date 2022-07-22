# swagger.model.PurchaseInvoice

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**companyId** | **int** |  | [default to null]
**invoiceId** | **int** |  | [optional] [default to null]
**bookingDate** | [**DateTime**](DateTime.md) |  | [default to null]
**invoiceDate** | [**DateTime**](DateTime.md) |  | [default to null]
**supplierId** | **int** |  | [default to null]
**supplierInvoiceId** | **String** |  | [default to null]
**currencyId** | **int** |  | [default to null]
**invoiceTotalAmount** | **double** | Total invoice amount in foreign currency | [default to null]
**journalEntryDescription** | **String** |  | [default to null]
**paymentTerm** | **int** |  | [default to null]
**paymentDiscount** | [**PaymentDiscount**](PaymentDiscount.md) | Payment discount information (amount in foreign currency) | [optional] [default to null]
**creditRestrictionSurcharge** | [**CreditRestrictionSurcharge**](CreditRestrictionSurcharge.md) | Credit restriction surcharge information (ammount in foreign currency | [optional] [default to null]
**vatZero** | [**Vat**](Vat.md) | Vat zero values (amounts in foreign currency) | [optional] [default to null]
**vatLow** | [**Vat**](Vat.md) | Vat low values (amounts in foreign currency) | [optional] [default to null]
**vatHigh** | [**Vat**](Vat.md) | Vat high values (amounts in foreign currency) | [optional] [default to null]
**externalId** | **String** |  | [default to null]
**procurationBlock** | **bool** |  | [optional] [default to null]
**invoicePdf** | **String** | PDF Invoice as Base64 string | [optional] [default to null]
**purchaseInvoiceLines** | [**List&lt;PurchaseInvoiceLine&gt;**](PurchaseInvoiceLine.md) |  | [default to []]
**internalInvoiceLines** | [**List&lt;MatchInternalInvoice&gt;**](MatchInternalInvoice.md) |  | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


