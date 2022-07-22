# swagger.model.ProductInformation

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** | Name of product | [default to null]
**supplierPID** | **String** | Product ID as registered in ERP system, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/Get\&quot;&gt;/api/Product&lt;/a&gt; | [default to null]
**searchKey** | **String** | Search key for product | [default to null]
**supplierAltPID** | **String** | Product ID at purchase organisation | [optional] [default to null]
**internationalPID** | **String** | European Article Number (EAN) for product | [optional] [default to null]
**manufacturerPID** | **String** | Product Id at supplier | [default to null]
**keywords** | [**List&lt;CultureString&gt;**](CultureString.md) | Meta keywords for product | [optional] [default to []]
**mediaInformation** | [**List&lt;MediaInformation&gt;**](MediaInformation.md) | Media details for product | [optional] [default to []]
**priceInformation** | [**PriceInformation**](PriceInformation.md) | Price details for product | [optional] [default to null]
**unitId** | **int** | ID for sales unit | [optional] [default to null]
**priceQuantity** | **double** | Quantity of product for which price is applicable | [optional] [default to null]
**contentUnitPerOrderUnit** | **int** | Number of content units in order unit | [optional] [default to null]
**customsNumber** | **int** | Product code as required by customs and as registered at Statistical Office | [optional] [default to null]
**countryOfOrigin** | **int** | Country ID for product&#39;s country of origin, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Country/Get\&quot;&gt;/api/Country&lt;/a&gt; | [optional] [default to null]
**unspsc** | **int** | United Nations Standard Products and Services Code (UNSPSC) for product | [optional] [default to null]
**deviatePacking** | **bool** | Indicates if deviation of standard packing quantity is allowed in orders | [optional] [default to null]
**canOrderSingleUnit** | **bool** | Indicates if deviation of standard packing quantity is allowed in orders in webshop | [optional] [default to null]
**standardPackingQuantity** | **double** | Quantity of product in standard packaging | [optional] [default to null]
**purchaseUnitId** | **int** | Purchase unit Id | [optional] [default to null]
**purchaseUnitQuantity** | **double** | Quantity in purchase unit | [optional] [default to 1.0]
**purchaseMinimum** | **double** | Minimum quantity for purchase | [optional] [default to null]
**packageQuantity** | **double** | Package quantity for product | [optional] [default to 1.0]
**salesDescription** | **List&lt;String&gt;** | Sales description of product | [optional] [default to []]
**state** | **int** | Product state, with 1 &#x3D; Stock, 2 &#x3D; No stock, 3 &#x3D; Do not order, 5 &#x3D; Do not order / sell, 6 &#x3D; Outlet, 7 &#x3D; Do not sell, 8 &#x3D; Special, 9 &#x3D; Can be deleted | [optional] [default to 2]
**groupId** | **int** | Product group ID | [default to null]
**subGroupId** | **int** | Product sub group ID | [default to null]
**groupFull** | **String** | Full group identification | [optional] [default to null]
**subGroupFull** | **String** | Full subgroup identification | [optional] [default to null]
**supplierId** | **int** | Supplier Id | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


