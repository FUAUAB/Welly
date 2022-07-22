# swagger.api.InvoiceApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detailedInvoice**](InvoiceApi.md#detailedInvoice) | **GET** /api/Invoice/Invoice/{companyId}/{invoiceNumber} | Get invoice by invoice number
[**getAllPaymentConditions**](InvoiceApi.md#getAllPaymentConditions) | **GET** /api/Invoice/PaymentCondition | Get payment conditions
[**getPaymentConditionById**](InvoiceApi.md#getPaymentConditionById) | **GET** /api/Invoice/PaymentCondition/{paymentConditionId} | Get payment condition by Id
[**invoice**](InvoiceApi.md#invoice) | **POST** /api/Invoice/Invoice | Create invoice.  (All amounts must be provided in the supplied currency)
[**invoiceByDeliveryInformation**](InvoiceApi.md#invoiceByDeliveryInformation) | **GET** /api/Invoice/Invoice/{companyId}/{orderId}/{deliveryId} | Get invoice by delivery information (orderId and deliveryId)
[**invoicePDF**](InvoiceApi.md#invoicePDF) | **GET** /api/Invoice/InvoicePDF/{companyId}/{branchId}/{invoiceId} | Return Invoice pdf-stream
[**invoicePDFByWeborderId**](InvoiceApi.md#invoicePDFByWeborderId) | **GET** /api/Invoice/InvoicePDF | Return invoice pdf-stream, based on weborderId
[**invoices**](InvoiceApi.md#invoices) | **POST** /api/Invoice/Invoices | Create multiple invoices in one transaction.  (All amounts must be provided in the supplied currency)
[**invoicesForCustomerWithSearch**](InvoiceApi.md#invoicesForCustomerWithSearch) | **GET** /api/Invoice/Invoice | Get invoices of customer, optional based on search parameter


# **detailedInvoice**
> V12Invoice detailedInvoice(companyId, invoiceNumber)

Get invoice by invoice number

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new InvoiceApi();
var companyId = 56; // int | Get companyId from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a>
var invoiceNumber = 56; // int | Get invoiceNumber from <a href=\"?deepLinking=true#/Invoice/Invoice/\">/api/Invoice</a>

try { 
    var result = api_instance.detailedInvoice(companyId, invoiceNumber);
    print(result);
} catch (e) {
    print("Exception when calling InvoiceApi->detailedInvoice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/Get\&quot;&gt;/api/Company&lt;/a&gt; | 
 **invoiceNumber** | **int**| Get invoiceNumber from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Invoice/Invoice/\&quot;&gt;/api/Invoice&lt;/a&gt; | 

### Return type

[**V12Invoice**](V12Invoice.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllPaymentConditions**
> V12PaymentCondition getAllPaymentConditions()

Get payment conditions

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new InvoiceApi();

try { 
    var result = api_instance.getAllPaymentConditions();
    print(result);
} catch (e) {
    print("Exception when calling InvoiceApi->getAllPaymentConditions: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V12PaymentCondition**](V12PaymentCondition.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaymentConditionById**
> V12PaymentCondition getPaymentConditionById(paymentConditionId)

Get payment condition by Id

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new InvoiceApi();
var paymentConditionId = 56; // int | Get ID from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Invoice/PaymentCondition\">/api/Invoice</a>

try { 
    var result = api_instance.getPaymentConditionById(paymentConditionId);
    print(result);
} catch (e) {
    print("Exception when calling InvoiceApi->getPaymentConditionById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentConditionId** | **int**| Get ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Invoice/PaymentCondition\&quot;&gt;/api/Invoice&lt;/a&gt; | 

### Return type

[**V12PaymentCondition**](V12PaymentCondition.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **invoice**
> invoice(invoice)

Create invoice.  (All amounts must be provided in the supplied currency)

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new InvoiceApi();
var invoice = new Invoice(); // Invoice | 

try { 
    api_instance.invoice(invoice);
} catch (e) {
    print("Exception when calling InvoiceApi->invoice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice** | [**Invoice**](Invoice.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **invoiceByDeliveryInformation**
> Invoice invoiceByDeliveryInformation(companyId, orderId, deliveryId)

Get invoice by delivery information (orderId and deliveryId)

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new InvoiceApi();
var companyId = 56; // int | Get companyId from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a>
var orderId = 56; // int | Get orderId from <a href=\"?deepLinking=true#/Order/Order/Get\">/api/Order</a>
var deliveryId = 56; // int | Get deliveryId from <a href=\"?deepLinking=true#/Delivery/Get\">/api/Delivery</a>

try { 
    var result = api_instance.invoiceByDeliveryInformation(companyId, orderId, deliveryId);
    print(result);
} catch (e) {
    print("Exception when calling InvoiceApi->invoiceByDeliveryInformation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/Get\&quot;&gt;/api/Company&lt;/a&gt; | 
 **orderId** | **int**| Get orderId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Order/Order/Get\&quot;&gt;/api/Order&lt;/a&gt; | 
 **deliveryId** | **int**| Get deliveryId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Delivery/Get\&quot;&gt;/api/Delivery&lt;/a&gt; | 

### Return type

[**Invoice**](Invoice.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **invoicePDF**
> MultipartFile invoicePDF(companyId, branchId, invoiceId, userId)

Return Invoice pdf-stream

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new InvoiceApi();
var companyId = 56; // int | Get companyId from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a>
var branchId = 56; // int | Get branchId from <a href=\"?deepLinking=true#/Branch/Get\">/api/Branch</a>
var invoiceId = 56; // int | Get invoiceId from <a href=\"?deepLinking=true#/Invoice/Invoice/{companyId}/{invoiceNumber}\">/api/Invoice</a>
var userId = userId_example; // String | Optional userId for custom report

try { 
    var result = api_instance.invoicePDF(companyId, branchId, invoiceId, userId);
    print(result);
} catch (e) {
    print("Exception when calling InvoiceApi->invoicePDF: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/Get\&quot;&gt;/api/Company&lt;/a&gt; | 
 **branchId** | **int**| Get branchId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Branch/Get\&quot;&gt;/api/Branch&lt;/a&gt; | 
 **invoiceId** | **int**| Get invoiceId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Invoice/Invoice/{companyId}/{invoiceNumber}\&quot;&gt;/api/Invoice&lt;/a&gt; | 
 **userId** | **String**| Optional userId for custom report | [optional] [default to ]

### Return type

[**MultipartFile**](File.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **invoicePDFByWeborderId**
> MultipartFile invoicePDFByWeborderId(companyId, branchId, customerId, weborderId, userId)

Return invoice pdf-stream, based on weborderId

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new InvoiceApi();
var companyId = 56; // int | Get companyId from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a>
var branchId = 56; // int | Get branchId from <a href=\"?deepLinking=true#/Branch/Get\">/api/Branch</a>
var customerId = 56; // int | Get customerId from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>
var weborderId = weborderId_example; // String | Web order Id, as generated in webshop
var userId = userId_example; // String | Optional userId for custom report

try { 
    var result = api_instance.invoicePDFByWeborderId(companyId, branchId, customerId, weborderId, userId);
    print(result);
} catch (e) {
    print("Exception when calling InvoiceApi->invoicePDFByWeborderId: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/Get\&quot;&gt;/api/Company&lt;/a&gt; | [optional] 
 **branchId** | **int**| Get branchId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Branch/Get\&quot;&gt;/api/Branch&lt;/a&gt; | [optional] 
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 
 **weborderId** | **String**| Web order Id, as generated in webshop | [optional] 
 **userId** | **String**| Optional userId for custom report | [optional] [default to ]

### Return type

[**MultipartFile**](File.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **invoices**
> invoices(invoices)

Create multiple invoices in one transaction.  (All amounts must be provided in the supplied currency)

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new InvoiceApi();
var invoices = [new List&lt;Invoice&gt;()]; // List<Invoice> | 

try { 
    api_instance.invoices(invoices);
} catch (e) {
    print("Exception when calling InvoiceApi->invoices: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoices** | [**List&lt;Invoice&gt;**](Invoice.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **invoicesForCustomerWithSearch**
> List<Invoice> invoicesForCustomerWithSearch(startDate, endDate, pageNumber, pageSize, storeId, companyId, customerId, employeeId, wLogin, showOnlyOwnData, searchType, searchString)

Get invoices of customer, optional based on search parameter

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new InvoiceApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Start date for requested invoice period
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | End date for requested invoice period
var pageNumber = 56; // int | Page number for response result
var pageSize = 56; // int | Number of records in result (max. 40)
var storeId = 56; // int | Get storeId from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop</a>
var companyId = 56; // int | Get companyId from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a>
var customerId = 56; // int | Get customerId from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>
var employeeId = 56; // int | Get employeeId from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Employee/Get\">/api/Employee</a>
var wLogin = wLogin_example; // String | Get login name from <a href=\"?deepLinking=true#/WebUser/Get\">/api/WebUser</a>
var showOnlyOwnData = true; // bool | Only show data for specified storeId, webshop login or employee
var searchType = searchType_example; // String | Search type
var searchString = searchString_example; // String | String upon which underlying records will be searched.

try { 
    var result = api_instance.invoicesForCustomerWithSearch(startDate, endDate, pageNumber, pageSize, storeId, companyId, customerId, employeeId, wLogin, showOnlyOwnData, searchType, searchString);
    print(result);
} catch (e) {
    print("Exception when calling InvoiceApi->invoicesForCustomerWithSearch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**| Start date for requested invoice period | 
 **endDate** | **DateTime**| End date for requested invoice period | 
 **pageNumber** | **int**| Page number for response result | [optional] 
 **pageSize** | **int**| Number of records in result (max. 40) | [optional] 
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] 
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/Get\&quot;&gt;/api/Company&lt;/a&gt; | [optional] 
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 
 **employeeId** | **int**| Get employeeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Employee/Get\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] 
 **wLogin** | **String**| Get login name from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/WebUser/Get\&quot;&gt;/api/WebUser&lt;/a&gt; | [optional] 
 **showOnlyOwnData** | **bool**| Only show data for specified storeId, webshop login or employee | [optional] 
 **searchType** | **String**| Search type | [optional] 
 **searchString** | **String**| String upon which underlying records will be searched. | [optional] 

### Return type

[**List<Invoice>**](Invoice.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10
 - **Accept**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

