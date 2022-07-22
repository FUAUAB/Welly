# swagger.api.UnitApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSalesUnitById**](UnitApi.md#getSalesUnitById) | **GET** /api/Unit/SalesUnit/{unitId} | Get sales unit by ID
[**getSalesUnits**](UnitApi.md#getSalesUnits) | **GET** /api/Unit/SalesUnit | Get all sales units for company


# **getSalesUnitById**
> SalesUnit getSalesUnitById(unitId, companyId)

Get sales unit by ID

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new UnitApi();
var unitId = 56; // int | Sales unit ID for requested details, retrieve ID from <a href=\"?deepLinking=true#/Unit/GetSalesUnits\">/api/Unit</a>
var companyId = 56; // int | Company ID for which sales units are applicable, retrieve ID from <a href=\"?deepLinking=true#/Company/GetAllCompanies\">/api/Company</a>

try { 
    var result = api_instance.getSalesUnitById(unitId, companyId);
    print(result);
} catch (e) {
    print("Exception when calling UnitApi->getSalesUnitById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unitId** | **int**| Sales unit ID for requested details, retrieve ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Unit/GetSalesUnits\&quot;&gt;/api/Unit&lt;/a&gt; | 
 **companyId** | **int**| Company ID for which sales units are applicable, retrieve ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/GetAllCompanies\&quot;&gt;/api/Company&lt;/a&gt; | [optional] 

### Return type

[**SalesUnit**](SalesUnit.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSalesUnits**
> List<SalesUnit> getSalesUnits(companyId)

Get all sales units for company

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new UnitApi();
var companyId = 56; // int | Company ID for which sales units are applicable, retrieve ID from <a href=\"?deepLinking=true#/Company/GetAllCompanies\">/api/Company</a>

try { 
    var result = api_instance.getSalesUnits(companyId);
    print(result);
} catch (e) {
    print("Exception when calling UnitApi->getSalesUnits: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Company ID for which sales units are applicable, retrieve ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/GetAllCompanies\&quot;&gt;/api/Company&lt;/a&gt; | [optional] 

### Return type

[**List<SalesUnit>**](SalesUnit.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

