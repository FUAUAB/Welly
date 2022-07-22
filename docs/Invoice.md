# swagger.model.Invoice

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**companyId** | **int** | CompanyId as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/Get\&quot;&gt;/api/Company&lt;/a&gt; | [default to null]
**branchId** | **int** | BranchId as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Branch/Get\&quot;&gt;/api/Branch&lt;/a&gt; | [default to null]
**invoiceNumber** | **int** | InvoiceId as retrievable from &lt;a href&#x3D;\&quot;?filter&#x3D;Invoice\&quot;&gt;/api/Invoice&lt;/a&gt; | [default to null]
**invoiceTotalAmount** | **double** | Invoice total amount incl. VAT | [default to null]
**invoiceDate** | [**DateTime**](DateTime.md) | Invoice date | [default to null]
**customerId** | **int** | Customer Id, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | [default to null]
**goodsAmount** | **double** | Total amount of goods excl. VAT | [optional] [default to null]
**costAmount** | **double** | Total amount of goods excl. VAT | [optional] [default to null]
**purchaseAmount** | **double** | Purchase value of goods | [optional] [default to null]
**vat** | [**List&lt;Vat&gt;**](Vat.md) | VAT information | [default to []]
**outstandingAmount** | **double** |  | [optional] [default to null]
**paymentDiscountTerm** | **int** | Customer default will be used if not parsed. | [optional] [default to null]
**paymentDiscountPercentage** | **double** | Customer default will be used if not parsed. | [optional] [default to null]
**paymentDiscountAmount** | **double** | Will be calculated from paymentDiscountPercentage is not parsed | [optional] [default to null]
**currencyCode** | **int** | currencyCode from obtained from GetCurrencyCodes | [default to null]
**currencyRate** | **double** | Default rate for the supplied currency wil be used if not parsed. | [optional] [default to null]
**invoiceType** | **String** | Default will be &#39;Invoice&#39; if not parsed | [optional] [default to null]
**orderQuantity** | **int** | Number of orders to which this invoice relates. | [optional] [default to null]
**printQuantity** | **int** | Number of times this invoice has been printed. | [optional] [default to null]
**paymentMethod** | **String** | Default will be &#39;On account&#39; if not parsed. | [optional] [default to null]
**ledgerJournalEntries** | [**List&lt;LedgerJournalEntry&gt;**](LedgerJournalEntry.md) | Ledger number used to register the invoice amount | [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


