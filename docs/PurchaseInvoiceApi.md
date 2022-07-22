# swagger.api.PurchaseInvoiceApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**paymentOnHoldById**](PurchaseInvoiceApi.md#paymentOnHoldById) | **POST** /api/PurchaseInvoice/PaymentOnHoldById/{ExternalId}/{ProcurationBlock} | Set purchaseinvoice procuration block by invoice externalId.
[**paymentOnHoldByIdByInvoice**](PurchaseInvoiceApi.md#paymentOnHoldByIdByInvoice) | **POST** /api/PurchaseInvoice/PaymentOnHoldBy/{companyId}/{invoiceId}/{ProcurationBlock} | Set purchaseinvoice procuration block by invoiceId.
[**purchaseInvoice**](PurchaseInvoiceApi.md#purchaseInvoice) | **GET** /api/PurchaseInvoice/PurchaseInvoiceOutstandingAmount/{companyId}/{invoiceId} | Get outstanding amout for specified purchase invoice by invoiceId
[**purchaseInvoiceById**](PurchaseInvoiceApi.md#purchaseInvoiceById) | **GET** /api/PurchaseInvoice/PurchaseInvoiceOutstandingAmountById/{ExternalId} | Get outstanding amout for specified purchase invoice by external id
[**uploadPurchaseInvoice**](PurchaseInvoiceApi.md#uploadPurchaseInvoice) | **POST** /api/PurchaseInvoice/PurchaseInvoice | Create purchase invoice  (All amounts must be provided in foreign currency)


# **paymentOnHoldById**
> bool paymentOnHoldById(externalId, procurationBlock)

Set purchaseinvoice procuration block by invoice externalId.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new PurchaseInvoiceApi();
var externalId = externalId_example; // String | 
var procurationBlock = true; // bool | 

try { 
    var result = api_instance.paymentOnHoldById(externalId, procurationBlock);
    print(result);
} catch (e) {
    print("Exception when calling PurchaseInvoiceApi->paymentOnHoldById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **externalId** | **String**|  | 
 **procurationBlock** | **bool**|  | 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentOnHoldByIdByInvoice**
> bool paymentOnHoldByIdByInvoice(companyId, invoiceId, procurationBlock)

Set purchaseinvoice procuration block by invoiceId.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new PurchaseInvoiceApi();
var companyId = 56; // int | 
var invoiceId = 56; // int | 
var procurationBlock = true; // bool | 

try { 
    var result = api_instance.paymentOnHoldByIdByInvoice(companyId, invoiceId, procurationBlock);
    print(result);
} catch (e) {
    print("Exception when calling PurchaseInvoiceApi->paymentOnHoldByIdByInvoice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**|  | 
 **invoiceId** | **int**|  | 
 **procurationBlock** | **bool**|  | 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **purchaseInvoice**
> PurchaseInvoiceOutstandingAmount purchaseInvoice(companyId, invoiceId)

Get outstanding amout for specified purchase invoice by invoiceId

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new PurchaseInvoiceApi();
var companyId = 56; // int | 
var invoiceId = 56; // int | 

try { 
    var result = api_instance.purchaseInvoice(companyId, invoiceId);
    print(result);
} catch (e) {
    print("Exception when calling PurchaseInvoiceApi->purchaseInvoice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**|  | 
 **invoiceId** | **int**|  | 

### Return type

[**PurchaseInvoiceOutstandingAmount**](PurchaseInvoiceOutstandingAmount.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **purchaseInvoiceById**
> PurchaseInvoiceOutstandingAmount purchaseInvoiceById(externalId)

Get outstanding amout for specified purchase invoice by external id

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new PurchaseInvoiceApi();
var externalId = externalId_example; // String | 

try { 
    var result = api_instance.purchaseInvoiceById(externalId);
    print(result);
} catch (e) {
    print("Exception when calling PurchaseInvoiceApi->purchaseInvoiceById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **externalId** | **String**|  | 

### Return type

[**PurchaseInvoiceOutstandingAmount**](PurchaseInvoiceOutstandingAmount.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadPurchaseInvoice**
> int uploadPurchaseInvoice(purchaseInvoice)

Create purchase invoice  (All amounts must be provided in foreign currency)

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new PurchaseInvoiceApi();
var purchaseInvoice = new PurchaseInvoice(); // PurchaseInvoice | 

try { 
    var result = api_instance.uploadPurchaseInvoice(purchaseInvoice);
    print(result);
} catch (e) {
    print("Exception when calling PurchaseInvoiceApi->uploadPurchaseInvoice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchaseInvoice** | [**PurchaseInvoice**](PurchaseInvoice.md)|  | [optional] 

### Return type

**int**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

