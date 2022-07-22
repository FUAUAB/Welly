# swagger.api.CostTypeApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllCostTypes**](CostTypeApi.md#getAllCostTypes) | **GET** /api/CostType | Get a list of all cost types.
[**getCostType**](CostTypeApi.md#getCostType) | **GET** /api/CostType/{Id} | Get a cost type by id.


# **getAllCostTypes**
> List<CostType> getAllCostTypes()

Get a list of all cost types.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new CostTypeApi();

try { 
    var result = api_instance.getAllCostTypes();
    print(result);
} catch (e) {
    print("Exception when calling CostTypeApi->getAllCostTypes: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CostType>**](CostType.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCostType**
> List<BranchInformation> getCostType(id)

Get a cost type by id.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new CostTypeApi();
var id = 56; // int | Get Id from <a href=\"?filter=CostType\">/api/CostType</a>

try { 
    var result = api_instance.getCostType(id);
    print(result);
} catch (e) {
    print("Exception when calling CostTypeApi->getCostType: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Get Id from &lt;a href&#x3D;\&quot;?filter&#x3D;CostType\&quot;&gt;/api/CostType&lt;/a&gt; | 

### Return type

[**List<BranchInformation>**](BranchInformation.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

