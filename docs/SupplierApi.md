# swagger.api.SupplierApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**allSuppliers**](SupplierApi.md#allSuppliers) | **GET** /api/Supplier | Get all suppliers
[**supplierByIdV15**](SupplierApi.md#supplierByIdV15) | **GET** /api/Supplier/Supplier/{SupplierId} | Find a supplier by SupplierID
[**supplierV15**](SupplierApi.md#supplierV15) | **GET** /api/Supplier/Supplier | Find a supplier by any of its search options


# **allSuppliers**
> List<V15Supplier> allSuppliers()

Get all suppliers

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new SupplierApi();

try { 
    var result = api_instance.allSuppliers();
    print(result);
} catch (e) {
    print("Exception when calling SupplierApi->allSuppliers: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<V15Supplier>**](V15Supplier.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **supplierByIdV15**
> V15Supplier supplierByIdV15(supplierId)

Find a supplier by SupplierID

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new SupplierApi();
var supplierId = 56; // int | 

try { 
    var result = api_instance.supplierByIdV15(supplierId);
    print(result);
} catch (e) {
    print("Exception when calling SupplierApi->supplierByIdV15: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierId** | **int**|  | 

### Return type

[**V15Supplier**](V15Supplier.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **supplierV15**
> List<V15Supplier> supplierV15(GLN, vATId, chamberofCommerceId)

Find a supplier by any of its search options

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new SupplierApi();
var GLN = GLN_example; // String | 
var vATId = vATId_example; // String | 
var chamberofCommerceId = chamberofCommerceId_example; // String | 

try { 
    var result = api_instance.supplierV15(GLN, vATId, chamberofCommerceId);
    print(result);
} catch (e) {
    print("Exception when calling SupplierApi->supplierV15: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GLN** | **String**|  | [optional] 
 **vATId** | **String**|  | [optional] 
 **chamberofCommerceId** | **String**|  | [optional] 

### Return type

[**List<V15Supplier>**](V15Supplier.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

