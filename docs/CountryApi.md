# swagger.api.CountryApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllCountries**](CountryApi.md#getAllCountries) | **GET** /api/Country | Get a list of all countries.
[**getCountryDetails**](CountryApi.md#getCountryDetails) | **GET** /api/Country/{countryId} | Get country by id.
[**getDetailsByIso3166**](CountryApi.md#getDetailsByIso3166) | **GET** /api/Country/{ISO3166} | Get country by ISO3166 code.


# **getAllCountries**
> List<Country> getAllCountries()

Get a list of all countries.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new CountryApi();

try { 
    var result = api_instance.getAllCountries();
    print(result);
} catch (e) {
    print("Exception when calling CountryApi->getAllCountries: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Country>**](Country.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCountryDetails**
> V19Country getCountryDetails(countryId)

Get country by id.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new CountryApi();
var countryId = 56; // int | Get countryId from <a href=\"?deepLinking=true#/Country/GetAllCountries\">/api/Country</a>

try { 
    var result = api_instance.getCountryDetails(countryId);
    print(result);
} catch (e) {
    print("Exception when calling CountryApi->getCountryDetails: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryId** | **int**| Get countryId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Country/GetAllCountries\&quot;&gt;/api/Country&lt;/a&gt; | 

### Return type

[**V19Country**](V19Country.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9
 - **Accept**: application/json;v=1.9, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDetailsByIso3166**
> V19Country getDetailsByIso3166(iSO3166)

Get country by ISO3166 code.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new CountryApi();
var iSO3166 = iSO3166_example; // String | 

try { 
    var result = api_instance.getDetailsByIso3166(iSO3166);
    print(result);
} catch (e) {
    print("Exception when calling CountryApi->getDetailsByIso3166: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **iSO3166** | **String**|  | 

### Return type

[**V19Country**](V19Country.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9
 - **Accept**: application/json;v=1.9, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

