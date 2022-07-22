# swagger.model.WebshopOrder

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**storeId** | **int** | Store ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop/Store&lt;/a&gt; | [optional] [default to null]
**companyId** | **int** | Company ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/Get\&quot;&gt;/api/Company&lt;/a&gt; | [optional] [default to null]
**branchId** | **int** | Branch ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Branch/Get\&quot;&gt;/api/Branch&lt;/a&gt; | [optional] [default to null]
**customerId** | **int** | Customer ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] [default to null]
**employeeId** | **int** | ID of employee who placed order, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Employee/GetCustomerEmployeeById\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] [default to null]
**deliveryAddressId** | **int** | Delivery address ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Shipping/Get\&quot;&gt;/api/Shipping&lt;/a&gt; | [optional] [default to null]
**login** | **String** | Login for user that placed the order | [optional] [default to null]
**products** | [**List&lt;WebshopProduct&gt;**](WebshopProduct.md) | Products in order | [optional] [default to []]
**specials** | [**List&lt;Special&gt;**](Special.md) | One-off products / items in order | [optional] [default to []]
**textLines** | **List&lt;String&gt;** | Additional text lines in order | [optional] [default to []]
**deliveryInformation** | [**AddressInformation**](AddressInformation.md) | Address information for delivery address | [optional] [default to null]
**customerOrderId** | **String** | Order identification as entered by customer | [optional] [default to null]
**webshopOrderId** | **String** | Order id as registered in webshop | [optional] [default to null]
**projectId** | **String** | Project ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Project/Get\&quot;&gt;/api/Project&lt;/a&gt; | [optional] [default to null]
**deliveryType** | **String** | Delivery type | [optional] [default to null]
**deliveryDate** | [**DateTime**](DateTime.md) | Delivery date | [optional] [default to null]
**note** | **String** | Additional comment | [optional] [default to null]
**orderedBy** | **String** | Reference for order, i.e. referred by | [optional] [default to null]
**contactPersonId** | **int** | Contactperson for order. Will be used by ERP to send ERP order confirmation. ID retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Employee/GetCustomerEmployeeById\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] [default to null]
**payed** | **bool** | Has order been paid | [optional] [default to null]
**paymentCondition** | **int** | Payment condition | [optional] [default to null]
**shippingMethod** | [**PayShipMethod**](PayShipMethod.md) | Shipping method, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Shipping/Methods/Get\&quot;&gt;/api/Shipping&lt;/a&gt; | [optional] [default to null]
**paymentMethod** | [**PayShipMethod**](PayShipMethod.md) | Payment method | [optional] [default to null]
**discountAmount** | **double** | Discount received (amount) | [optional] [default to null]
**vaTnumber** | **String** | VAT identification | [optional] [default to null]
**receptionMethod** | **String** | Origin of order | [optional] [default to null]
**deliveryInFull** | **bool** | Deliver order in full | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


