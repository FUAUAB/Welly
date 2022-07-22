# swagger.api.SectorApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSectorById**](SectorApi.md#getSectorById) | **GET** /api/Sector/{companyId}/{sectorId} | Get Sector
[**getSectorsForCompany**](SectorApi.md#getSectorsForCompany) | **GET** /api/Sector/{companyId} | Get Sectors from company


# **getSectorById**
> V12Sector getSectorById(companyId, sectorId)

Get Sector

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new SectorApi();
var companyId = 56; // int | Get companyId from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a>
var sectorId = 56; // int | Get sectorId from <a href=\"?deepLinking=true#/Sector/Get\">/api/Sector</a>

try { 
    var result = api_instance.getSectorById(companyId, sectorId);
    print(result);
} catch (e) {
    print("Exception when calling SectorApi->getSectorById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/Get\&quot;&gt;/api/Company&lt;/a&gt; | 
 **sectorId** | **int**| Get sectorId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Sector/Get\&quot;&gt;/api/Sector&lt;/a&gt; | 

### Return type

[**V12Sector**](V12Sector.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSectorsForCompany**
> List<V12Sector> getSectorsForCompany(companyId)

Get Sectors from company

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new SectorApi();
var companyId = 56; // int | Get companyId from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a>

try { 
    var result = api_instance.getSectorsForCompany(companyId);
    print(result);
} catch (e) {
    print("Exception when calling SectorApi->getSectorsForCompany: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/Get\&quot;&gt;/api/Company&lt;/a&gt; | 

### Return type

[**List<V12Sector>**](V12Sector.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

