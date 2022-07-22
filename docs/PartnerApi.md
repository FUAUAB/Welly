# swagger.api.PartnerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePartnerObject**](PartnerApi.md#deletePartnerObject) | **DELETE** /api/Partner | Delete partner ID for Mavis entity, for example account, order, invoice or contact
[**registerPartnerObject**](PartnerApi.md#registerPartnerObject) | **PUT** /api/Partner/Register | Register partner object ID for Mavis entity, for example account, order, invoice or contact


# **deletePartnerObject**
> bool deletePartnerObject(companyId, erpId, partnerId, objectType, objectId)

Delete partner ID for Mavis entity, for example account, order, invoice or contact

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new PartnerApi();
var companyId = 56; // int | Company Id, as retrievable from <a href=\"?deepLinking=true#/Company/GetAllCompanies\">api/Company</a>
var erpId = 56; // int | Object Id as registered in Mavis
var partnerId = partnerId_example; // String | Partner Id, with \"SF\" = Salesforce, \"CX\" = Centix\"
var objectType = objectType_example; // String | Object type
var objectId = objectId_example; // String | Object Id as registered at partner

try { 
    var result = api_instance.deletePartnerObject(companyId, erpId, partnerId, objectType, objectId);
    print(result);
} catch (e) {
    print("Exception when calling PartnerApi->deletePartnerObject: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Company Id, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/GetAllCompanies\&quot;&gt;api/Company&lt;/a&gt; | [optional] 
 **erpId** | **int**| Object Id as registered in Mavis | [optional] 
 **partnerId** | **String**| Partner Id, with \&quot;SF\&quot; &#x3D; Salesforce, \&quot;CX\&quot; &#x3D; Centix\&quot; | [optional] 
 **objectType** | **String**| Object type | [optional] 
 **objectId** | **String**| Object Id as registered at partner | [optional] 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerPartnerObject**
> bool registerPartnerObject(companyId, erpId, partnerId, objectType, objectId)

Register partner object ID for Mavis entity, for example account, order, invoice or contact

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new PartnerApi();
var companyId = 56; // int | Company Id, as retrievable from <a href=\"?deepLinking=true#/Company/GetAllCompanies\">api/Company</a>
var erpId = 56; // int | Object Id as registered in Mavis
var partnerId = partnerId_example; // String | Partner Id, with \"SF\" = Salesforce, \"CX\" = Centix\"
var objectType = objectType_example; // String | Object type
var objectId = objectId_example; // String | Object Id as registered at partner

try { 
    var result = api_instance.registerPartnerObject(companyId, erpId, partnerId, objectType, objectId);
    print(result);
} catch (e) {
    print("Exception when calling PartnerApi->registerPartnerObject: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Company Id, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/GetAllCompanies\&quot;&gt;api/Company&lt;/a&gt; | [optional] 
 **erpId** | **int**| Object Id as registered in Mavis | [optional] 
 **partnerId** | **String**| Partner Id, with \&quot;SF\&quot; &#x3D; Salesforce, \&quot;CX\&quot; &#x3D; Centix\&quot; | [optional] 
 **objectType** | **String**| Object type | [optional] 
 **objectId** | **String**| Object Id as registered at partner | [optional] 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

