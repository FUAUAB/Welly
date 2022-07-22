# swagger.model.Product

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**productId** | **String** | Product ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/Get\&quot;&gt;/api/Product&lt;/a&gt; | [optional] [default to null]
**description** | **List&lt;String&gt;** | Name of product | [optional] [default to []]
**purchaseDescription** | **List&lt;String&gt;** | Product description according to purchaser | [optional] [default to []]
**price** | **double** | Sales price for product | [optional] [default to null]
**standardCost** | **double** | Standard Price for product | [optional] [default to null]
**grossPurchasePrice** | **double** | Gross purchase price for product | [optional] [default to null]
**purchasePrice** | **double** | Purchase price for product | [optional] [default to null]
**consumerPrice** | **double** | Price for product for consumer | [optional] [default to null]
**offerPrice** | **double** | Special / Promotional price | [optional] [default to null]
**offerStarts** | [**DateTime**](DateTime.md) | Starting date when special price is applicable | [optional] [default to null]
**offerEnds** | [**DateTime**](DateTime.md) | End date after which special price is no longer applicable | [optional] [default to null]
**taxRate** | **double** | VAT rate for product | [optional] [default to null]
**standardPackingQuantity** | **double** | Quantity of product in standard packaging | [optional] [default to null]
**unspsc** | **String** | United Nations Standard Products and Services Code (UNSPSC) for product | [optional] [default to null]
**ean** | **String** | European Article Number (EAN) for product | [optional] [default to null]
**supplierProductId** | **String** | Product Id at supplier | [optional] [default to null]
**purchasingOrganizationProductId** | **String** | Product Id at purchase organisation | [optional] [default to null]
**salesUnit** | **String** | Sales unit description | [optional] [default to null]
**priceFactor** | **double** | Factor for price calculation | [optional] [default to null]
**productType** | **String** | Type Id for product, where 0 &#x3D; Regular, 1 &#x3D; Finished product, 2 &#x3D; Composition, 3 &#x3D; Labor product | [optional] [default to null]
**productDimensions** | [**Dimensions**](Dimensions.md) | Dimensions for product, such as height, weight | [optional] [default to null]
**packagingDimensions** | [**Dimensions**](Dimensions.md) | Dimensions for package, such as height, weigth | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


