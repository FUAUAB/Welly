# swagger.api.AddressApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkPostalcode**](AddressApi.md#checkPostalcode) | **GET** /api/Address/CheckPostalcode | Validate dutch address
[**checkPostalcodeBE**](AddressApi.md#checkPostalcodeBE) | **GET** /api/Address/CheckPostalcodeBE | Validate belgian address


# **checkPostalcode**
> CheckedAddress checkPostalcode(postalCode, houseNumber, houseNumberAddition)

Validate dutch address

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new AddressApi();
var postalCode = postalCode_example; // String | 
var houseNumber = houseNumber_example; // String | 
var houseNumberAddition = houseNumberAddition_example; // String | 

try { 
    var result = api_instance.checkPostalcode(postalCode, houseNumber, houseNumberAddition);
    print(result);
} catch (e) {
    print("Exception when calling AddressApi->checkPostalcode: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postalCode** | **String**|  | [optional] 
 **houseNumber** | **String**|  | [optional] 
 **houseNumberAddition** | **String**|  | [optional] 

### Return type

[**CheckedAddress**](CheckedAddress.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkPostalcodeBE**
> CheckedAddress checkPostalcodeBE(postalArea, streetName, houseNumber)

Validate belgian address

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new AddressApi();
var postalArea = postalArea_example; // String | 
var streetName = streetName_example; // String | 
var houseNumber = houseNumber_example; // String | 

try { 
    var result = api_instance.checkPostalcodeBE(postalArea, streetName, houseNumber);
    print(result);
} catch (e) {
    print("Exception when calling AddressApi->checkPostalcodeBE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postalArea** | **String**|  | [optional] 
 **streetName** | **String**|  | [optional] 
 **houseNumber** | **String**|  | [optional] 

### Return type

[**CheckedAddress**](CheckedAddress.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

