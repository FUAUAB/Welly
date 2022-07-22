# swagger.api.WmsStatusInformationApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**wmsStatusInformation**](WmsStatusInformationApi.md#wmsStatusInformation) | **GET** /api/WmsStatusInformation | Return Wms Status Information


# **wmsStatusInformation**
> List<WmsStatusInformation> wmsStatusInformation(companyId, branchId)

Return Wms Status Information

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WmsStatusInformationApi();
var companyId = 56; // int | Get companyId from <a href=\"?filter=Company\">/api/Company</a>
var branchId = 56; // int | Get branchId from <a href=\"?filter=Branch\">/api/Branch</a>

try { 
    var result = api_instance.wmsStatusInformation(companyId, branchId);
    print(result);
} catch (e) {
    print("Exception when calling WmsStatusInformationApi->wmsStatusInformation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?filter&#x3D;Company\&quot;&gt;/api/Company&lt;/a&gt; | [optional] 
 **branchId** | **int**| Get branchId from &lt;a href&#x3D;\&quot;?filter&#x3D;Branch\&quot;&gt;/api/Branch&lt;/a&gt; | [optional] 

### Return type

[**List<WmsStatusInformation>**](WmsStatusInformation.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

