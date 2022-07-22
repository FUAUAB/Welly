# swagger.api.HotlistApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addToHotlist**](HotlistApi.md#addToHotlist) | **POST** /api/hotlist/Hotlist/Product | Add product to hotlist
[**createHotlist**](HotlistApi.md#createHotlist) | **POST** /api/hotlist/Hotlist | Create hotlist
[**deleteFromHotlist**](HotlistApi.md#deleteFromHotlist) | **DELETE** /api/hotlist/Hotlist/Product | Delete product from hotlist
[**deleteHotlist**](HotlistApi.md#deleteHotlist) | **DELETE** /api/hotlist/Hotlist | Delete hotlist
[**editHotlist**](HotlistApi.md#editHotlist) | **PUT** /api/hotlist/Hotlist | Edit hotlist
[**getHotlistsForCustomer**](HotlistApi.md#getHotlistsForCustomer) | **GET** /api/hotlist/Hotlist/Customer | Get hotlists for customer
[**hotListDetailed**](HotlistApi.md#hotListDetailed) | **GET** /api/hotlist/Hotlist | Get hotlist
[**hotlistForUser**](HotlistApi.md#hotlistForUser) | **GET** /api/hotlist/Hotlist/User | Get hotlists for user


# **addToHotlist**
> bool addToHotlist(storeId, customerId, wLogin, hotlid, artinr)

Add product to hotlist

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new HotlistApi();
var storeId = 56; // int | Get storeId from <a href=\"?filter=Webshop\">/api/Webshop</a>
var customerId = 56; // int | Get customerId from <a href=\"?filter=Customer\">/api/Customer</a>
var wLogin = wLogin_example; // String | Get login name from <a href=\"?filter=WebUser\">/api/WebUser</a>
var hotlid = 56; // int | Hotlist identifier
var artinr = artinr_example; // String | Product identifier

try { 
    var result = api_instance.addToHotlist(storeId, customerId, wLogin, hotlid, artinr);
    print(result);
} catch (e) {
    print("Exception when calling HotlistApi->addToHotlist: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?filter&#x3D;Webshop\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?filter&#x3D;Customer\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **wLogin** | **String**| Get login name from &lt;a href&#x3D;\&quot;?filter&#x3D;WebUser\&quot;&gt;/api/WebUser&lt;/a&gt; | 
 **hotlid** | **int**| Hotlist identifier | 
 **artinr** | **String**| Product identifier | 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createHotlist**
> bool createHotlist(storeId, customerId, wLogin, hotlistDescription, defaultList)

Create hotlist

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new HotlistApi();
var storeId = 56; // int | Get storeId from <a href=\"?filter=Webshop\">/api/Webshop</a>
var customerId = 56; // int | Get customerId from <a href=\"?filter=Customer\">/api/Customer</a>
var wLogin = wLogin_example; // String | Customer login
var hotlistDescription = hotlistDescription_example; // String | Hotlist description
var defaultList = true; // bool | Default list

try { 
    var result = api_instance.createHotlist(storeId, customerId, wLogin, hotlistDescription, defaultList);
    print(result);
} catch (e) {
    print("Exception when calling HotlistApi->createHotlist: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?filter&#x3D;Webshop\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?filter&#x3D;Customer\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **wLogin** | **String**| Customer login | 
 **hotlistDescription** | **String**| Hotlist description | 
 **defaultList** | **bool**| Default list | 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFromHotlist**
> bool deleteFromHotlist(storeId, customerId, wLogin, hotlid, artinr)

Delete product from hotlist

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new HotlistApi();
var storeId = 56; // int | Get storeId from <a href=\"?filter=Webshop\">/api/Webshop</a>
var customerId = 56; // int | Get customerId from <a href=\"?filter=Customer\">/api/Customer</a>
var wLogin = wLogin_example; // String | Get login name from <a href=\"?filter=WebUser\">/api/WebUser</a>
var hotlid = 56; // int | Hotlist identifier
var artinr = artinr_example; // String | Product identifier

try { 
    var result = api_instance.deleteFromHotlist(storeId, customerId, wLogin, hotlid, artinr);
    print(result);
} catch (e) {
    print("Exception when calling HotlistApi->deleteFromHotlist: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?filter&#x3D;Webshop\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?filter&#x3D;Customer\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **wLogin** | **String**| Get login name from &lt;a href&#x3D;\&quot;?filter&#x3D;WebUser\&quot;&gt;/api/WebUser&lt;/a&gt; | 
 **hotlid** | **int**| Hotlist identifier | 
 **artinr** | **String**| Product identifier | 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteHotlist**
> bool deleteHotlist(storeId, customerId, wLogin, hotlid)

Delete hotlist

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new HotlistApi();
var storeId = 56; // int | Get storeId from <a href=\"?filter=Webshop\">/api/Webshop</a>
var customerId = 56; // int | Get customerId from <a href=\"?filter=Customer\">/api/Customer</a>
var wLogin = wLogin_example; // String | Get login name from <a href=\"?filter=WebUser\">/api/WebUser</a>
var hotlid = 56; // int | Hotlist identifier

try { 
    var result = api_instance.deleteHotlist(storeId, customerId, wLogin, hotlid);
    print(result);
} catch (e) {
    print("Exception when calling HotlistApi->deleteHotlist: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?filter&#x3D;Webshop\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?filter&#x3D;Customer\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **wLogin** | **String**| Get login name from &lt;a href&#x3D;\&quot;?filter&#x3D;WebUser\&quot;&gt;/api/WebUser&lt;/a&gt; | 
 **hotlid** | **int**| Hotlist identifier | 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editHotlist**
> bool editHotlist(storeId, customerId, wLogin, hotlid, hotlistDescription, defaultList)

Edit hotlist

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new HotlistApi();
var storeId = 56; // int | Get storeId from <a href=\"?filter=Webshop\">/api/Webshop</a>
var customerId = 56; // int | Get customerId from <a href=\"?filter=Customer\">/api/Customer</a>
var wLogin = wLogin_example; // String | Get login name from <a href=\"?filter=WebUser\">/api/WebUser</a>
var hotlid = 56; // int | Hotlist identifier
var hotlistDescription = hotlistDescription_example; // String | Hotlist description
var defaultList = true; // bool | Default list

try { 
    var result = api_instance.editHotlist(storeId, customerId, wLogin, hotlid, hotlistDescription, defaultList);
    print(result);
} catch (e) {
    print("Exception when calling HotlistApi->editHotlist: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?filter&#x3D;Webshop\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?filter&#x3D;Customer\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **wLogin** | **String**| Get login name from &lt;a href&#x3D;\&quot;?filter&#x3D;WebUser\&quot;&gt;/api/WebUser&lt;/a&gt; | 
 **hotlid** | **int**| Hotlist identifier | 
 **hotlistDescription** | **String**| Hotlist description | 
 **defaultList** | **bool**| Default list | [optional] 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHotlistsForCustomer**
> List<V14Hotlist> getHotlistsForCustomer(storeId, customerId)

Get hotlists for customer

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new HotlistApi();
var storeId = 56; // int | Get storeId from <a href=\"?filter=Webshop\">/api/Webshop</a>
var customerId = 56; // int | Get customerId from <a href=\"?filter=Customer\">/api/Customer</a>

try { 
    var result = api_instance.getHotlistsForCustomer(storeId, customerId);
    print(result);
} catch (e) {
    print("Exception when calling HotlistApi->getHotlistsForCustomer: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?filter&#x3D;Webshop\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?filter&#x3D;Customer\&quot;&gt;/api/Customer&lt;/a&gt; | 

### Return type

[**List<V14Hotlist>**](V14Hotlist.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **hotListDetailed**
> HotlistDetailed hotListDetailed(storeId, customerId, wLogin, hotlistId)

Get hotlist

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new HotlistApi();
var storeId = 56; // int | Get storeId from <a href=\"?filter=Webshop\">/api/Webshop</a>
var customerId = 56; // int | Get customerId from <a href=\"?filter=Customer\">/api/Customer</a>
var wLogin = wLogin_example; // String | Get login name from <a href=\"?filter=WebUser\">/api/WebUser</a>
var hotlistId = 56; // int | Get hotlistId from <a href=\"?filter=Webshop\">/api/Webshop</a>

try { 
    var result = api_instance.hotListDetailed(storeId, customerId, wLogin, hotlistId);
    print(result);
} catch (e) {
    print("Exception when calling HotlistApi->hotListDetailed: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?filter&#x3D;Webshop\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?filter&#x3D;Customer\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **wLogin** | **String**| Get login name from &lt;a href&#x3D;\&quot;?filter&#x3D;WebUser\&quot;&gt;/api/WebUser&lt;/a&gt; | 
 **hotlistId** | **int**| Get hotlistId from &lt;a href&#x3D;\&quot;?filter&#x3D;Webshop\&quot;&gt;/api/Webshop&lt;/a&gt; | 

### Return type

[**HotlistDetailed**](HotlistDetailed.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **hotlistForUser**
> List<V14Hotlist> hotlistForUser(storeId, customerId, wLogin)

Get hotlists for user

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new HotlistApi();
var storeId = 56; // int | Get storeId from <a href=\"?filter=Webshop\">/api/Webshop</a>
var customerId = 56; // int | Get customerId from <a href=\"?filter=Customer\">/api/Customer</a>
var wLogin = wLogin_example; // String | Get login name from <a href=\"?filter=WebUser\">/api/WebUser</a>

try { 
    var result = api_instance.hotlistForUser(storeId, customerId, wLogin);
    print(result);
} catch (e) {
    print("Exception when calling HotlistApi->hotlistForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?filter&#x3D;Webshop\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?filter&#x3D;Customer\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **wLogin** | **String**| Get login name from &lt;a href&#x3D;\&quot;?filter&#x3D;WebUser\&quot;&gt;/api/WebUser&lt;/a&gt; | 

### Return type

[**List<V14Hotlist>**](V14Hotlist.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

