# swagger.api.InternalInvoiceApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**internalInvoice**](InternalInvoiceApi.md#internalInvoice) | **GET** /api/InternalInvoice/InternalInvoice/{companyId}/{branchId}/{purchaseId}/{deliverySequenceId} | Get internal invoice
[**matchInternalInvoice**](InternalInvoiceApi.md#matchInternalInvoice) | **PUT** /api/InternalInvoice/MatchInternalInvoice | Match internal invoice lines with purchase invoice
[**outstandingInternalInvoices**](InternalInvoiceApi.md#outstandingInternalInvoices) | **GET** /api/InternalInvoice/OutstandingInternalInvoices/{companyId}/{branchId} | Get all outstanding internal invoices


# **internalInvoice**
> InternalInvoice internalInvoice(companyId, branchId, purchaseId, deliverySequenceId)

Get internal invoice

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new InternalInvoiceApi();
var companyId = 56; // int | 
var branchId = 56; // int | 
var purchaseId = 56; // int | 
var deliverySequenceId = 56; // int | 

try { 
    var result = api_instance.internalInvoice(companyId, branchId, purchaseId, deliverySequenceId);
    print(result);
} catch (e) {
    print("Exception when calling InternalInvoiceApi->internalInvoice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**|  | 
 **branchId** | **int**|  | 
 **purchaseId** | **int**|  | 
 **deliverySequenceId** | **int**|  | 

### Return type

[**InternalInvoice**](InternalInvoice.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **matchInternalInvoice**
> List<MatchInternalInvoice> matchInternalInvoice(internalInvoiceLines)

Match internal invoice lines with purchase invoice

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new InternalInvoiceApi();
var internalInvoiceLines = [new List&lt;MatchInternalInvoice&gt;()]; // List<MatchInternalInvoice> | 

try { 
    var result = api_instance.matchInternalInvoice(internalInvoiceLines);
    print(result);
} catch (e) {
    print("Exception when calling InternalInvoiceApi->matchInternalInvoice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **internalInvoiceLines** | [**List&lt;MatchInternalInvoice&gt;**](MatchInternalInvoice.md)|  | [optional] 

### Return type

[**List<MatchInternalInvoice>**](MatchInternalInvoice.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **outstandingInternalInvoices**
> List<InternalInvoice> outstandingInternalInvoices(companyId, branchId)

Get all outstanding internal invoices

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new InternalInvoiceApi();
var companyId = 56; // int | 
var branchId = 56; // int | 

try { 
    var result = api_instance.outstandingInternalInvoices(companyId, branchId);
    print(result);
} catch (e) {
    print("Exception when calling InternalInvoiceApi->outstandingInternalInvoices: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**|  | 
 **branchId** | **int**|  | 

### Return type

[**List<InternalInvoice>**](InternalInvoice.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

