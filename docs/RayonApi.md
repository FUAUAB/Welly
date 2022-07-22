# swagger.api.RayonApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRayonById**](RayonApi.md#getRayonById) | **GET** /api/Rayon/{rayonId} | Get Rayon
[**getRayons**](RayonApi.md#getRayons) | **GET** /api/Rayon | Get Rayons


# **getRayonById**
> V12Rayon getRayonById(rayonId, languageId)

Get Rayon

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new RayonApi();
var rayonId = 56; // int | Get rayonId from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Rayon/Get\">/api/Rayon</a>
var languageId = 56; // int | Get languageId from <a href=\"?deepLinking=true#/Language/Get\">/api/Language</a>

try { 
    var result = api_instance.getRayonById(rayonId, languageId);
    print(result);
} catch (e) {
    print("Exception when calling RayonApi->getRayonById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rayonId** | **int**| Get rayonId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Rayon/Get\&quot;&gt;/api/Rayon&lt;/a&gt; | 
 **languageId** | **int**| Get languageId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Language/Get\&quot;&gt;/api/Language&lt;/a&gt; | [optional] [default to 0]

### Return type

[**V12Rayon**](V12Rayon.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRayons**
> List<V12Rayon> getRayons(languageId)

Get Rayons

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new RayonApi();
var languageId = 56; // int | Get languageId from <a href=\"?deepLinking=true#/Language/Get\">/api/Language</a>

try { 
    var result = api_instance.getRayons(languageId);
    print(result);
} catch (e) {
    print("Exception when calling RayonApi->getRayons: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **languageId** | **int**| Get languageId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Language/Get\&quot;&gt;/api/Language&lt;/a&gt; | [optional] [default to 0]

### Return type

[**List<V12Rayon>**](V12Rayon.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

