# swagger.model.UmsModelsUserSettings

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**canOrder** | **bool** | User can place orders. | [optional] [default to null]
**showWishlist** | **bool** | Show wishlist for this user. | [optional] [default to null]
**customerWishlist** | **bool** | User has access to wishlist of parent company. | [optional] [default to null]
**showWarehouse** | **bool** | User can use customer warehouse. | [optional] [default to null]
**customerWarehouse** | **bool** | User has access to parent warehouse. | [optional] [default to null]
**canDownload** | **bool** | User is allowed to download. | [optional] [default to null]
**showTender** | **bool** | User can retrieve tender information. | [optional] [default to null]
**showOrder** | **bool** | User can retrieve order information. | [optional] [default to null]
**showDelivery** | **bool** | User can retrieve delivery information. | [optional] [default to null]
**showInvoice** | **bool** | User can retrieve invoices. | [optional] [default to null]
**canChangeShowDiscountProducts** | **bool** | User is allowed to change the setting for showing products with a special price. | [optional] [default to null]
**showDiscountProducts** | **bool** | Show products with a special price for this user. | [optional] [default to null]
**canChangeCanChangeShippingAddress** | **bool** | User is allowed to change shipping address. | [optional] [default to null]
**canChangeShippingAddress** | **bool** | User is allowed to change shipping address for order. | [optional] [default to null]
**canChangePassword** | **bool** | User is allowed to change its password. | [optional] [default to null]
**onlyShowOwnData** | **bool** | Only show user&#39;s own data. | [optional] [default to null]
**allowPartialPayments** | **bool** | User can place orders with partial payment. | [optional] [default to null]
**canRequestTender** | **bool** | User can request tenders. | [optional] [default to null]
**priceMode** | **String** | Display of prices for this user (\&quot;W\&quot; &#x3D; show prices, \&quot;N\&quot; &#x3D; don&#39;t show prices,  \&quot;B\&quot; &#x3D; display of prices is limited). | [optional] [default to null]
**onlyShowGrossPrice** | **bool** | Show only gross prices for this user. | [optional] [default to null]
**canChangeCustomerOrdernumberRequired** | **bool** | User is allowed to change the setting of requirement of customer order number. | [optional] [default to null]
**customerOrdernumberRequired** | **bool** | Customer order number is required for orders for this user. | [optional] [default to null]
**defaultCustomerOrdernumber** | **String** | User default customer order number for this user. | [optional] [default to null]
**canChangeCustomerReferenceRequired** | **bool** | User is allowed to change setting of requirement of reference. | [optional] [default to null]
**customerReferenceRequired** | **bool** |  | [optional] [default to null]
**defaultCustomerReference** | **String** | Use default customer reference for this user. | [optional] [default to null]
**showErpCustomerReferences** | **bool** | Show ERP references for this user. | [optional] [default to null]
**showSearchCategory** | **bool** | Show search categories for this user. | [optional] [default to null]
**useEmployeeAddressAsShippingAddress** | **bool** | User&#39;s address should be used as shipping address. | [optional] [default to null]
**useEmployeeNameInShippingAddress** | **bool** | User&#39;s name should be included in shipping address. | [optional] [default to null]
**manageEmployees** | **bool** | User can manage data of other employees. | [optional] [default to null]
**umsRole** | **int** | UMS Role ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/UmsAuthorizer/RolesForCustomer\&quot;&gt;/api/UmsAuthorizer&lt;/a&gt;. | [optional] [default to null]
**orderAttachmentRequired** | **bool** | User is obliged to add an attachment to the order. | [optional] [default to null]
**canAddChangeProjects** | **bool** | User is allowed to add/edit projects. | [optional] [default to null]
**manualAddressEntryMandatory** | **bool** | User is obliged to manually enter address in store. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


