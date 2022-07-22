# swagger.api.ReturnReasonApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**returnReasons**](ReturnReasonApi.md#returnReasons) | **GET** /api/ReturnReason | Get a list of all return reasons.


# **returnReasons**
> List<ReturnReason> returnReasons(languageId, webshopOnly)

Get a list of all return reasons.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ReturnReasonApi();
var languageId = 56; // int | Get languageId from <a href=\"?filter=Language\">/api/Language</a>
var webshopOnly = true; // bool | Only return reasons set for display on webshop

try { 
    var result = api_instance.returnReasons(languageId, webshopOnly);
    print(result);
} catch (e) {
    print("Exception when calling ReturnReasonApi->returnReasons: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **languageId** | **int**| Get languageId from &lt;a href&#x3D;\&quot;?filter&#x3D;Language\&quot;&gt;/api/Language&lt;/a&gt; | [optional] 
 **webshopOnly** | **bool**| Only return reasons set for display on webshop | [optional] 

### Return type

[**List<ReturnReason>**](ReturnReason.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

