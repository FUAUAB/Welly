# swagger.api.ProductApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addProductV14**](ProductApi.md#addProductV14) | **POST** /api/Product/Product | Add product to ERP from Product Information Management system
[**allPackageInformation**](ProductApi.md#allPackageInformation) | **GET** /api/Product/Package | Get package information
[**articleGroup**](ProductApi.md#articleGroup) | **GET** /api/Product/ArticleGroup | Get article groups including applicable ledger accounts
[**articleGroupById**](ProductApi.md#articleGroupById) | **GET** /api/Product/ArticleGroup/{Id} | Get article group by Id including applicable ledger accounts
[**articleSubGroups**](ProductApi.md#articleSubGroups) | **GET** /api/Product/ArticleSubGroup | Get article sub groups, optionally specified by parent article group ID.
[**branchAvailability**](ProductApi.md#branchAvailability) | **GET** /api/Product/BranchAvailability | Get a list of all product availability per branch for a specific company
[**brands**](ProductApi.md#brands) | **GET** /api/Product/Brand | Return a list of all product brands.
[**createCustomerProductReference**](ProductApi.md#createCustomerProductReference) | **POST** /api/Product/CustomerProductReference | Create customer product reference in ERP for specified customer and product
[**customerProductReference**](ProductApi.md#customerProductReference) | **GET** /api/Product/CustomerProductReference/{customerId}/{productId} | Get customer product references for specified customer and product
[**customerProductReferenceList**](ProductApi.md#customerProductReferenceList) | **GET** /api/Product/CustomerProductReference/{customerId} | Get a list of customer product references for specified customer
[**customerSpecific**](ProductApi.md#customerSpecific) | **GET** /api/Product/CustomerSpecific | Get customer specific products
[**customerSpecificById**](ProductApi.md#customerSpecificById) | **GET** /api/Product/CustomerSpecific/{customerId} | Get customer specific products for specified customer
[**deleteCustomerProductReference**](ProductApi.md#deleteCustomerProductReference) | **DELETE** /api/Product/CustomerProductReference | Remove customer product reference in ERP for specified customer and product
[**deleteProduct**](ProductApi.md#deleteProduct) | **DELETE** /api/Product/Product | Delete product in ERP
[**editCustomerProductReference**](ProductApi.md#editCustomerProductReference) | **PUT** /api/Product/CustomerProductReference | Edit customer product reference in ERP for specified customer and product
[**editProductV14**](ProductApi.md#editProductV14) | **PUT** /api/Product/Product | Edit product in ERP from Product Information Management system
[**getProductInformation**](ProductApi.md#getProductInformation) | **GET** /api/Product/ProductInformation | Get Product information for specified product
[**getProductInformationPaged**](ProductApi.md#getProductInformationPaged) | **GET** /api/Product/ProductInformation/Paged | Get product information for shop products
[**package**](ProductApi.md#package) | **GET** /api/Product/Package/{unitId} | Get package information
[**priceAndStockStoreForRange**](ProductApi.md#priceAndStockStoreForRange) | **GET** /api/Product/PricesAndStock/{storeId} | Get price and stock information for specified store and range
[**priceAndStockV14SingleProduct**](ProductApi.md#priceAndStockV14SingleProduct) | **GET** /api/Product/PriceAndStock | Get price and stock information for specified product
[**priceTiers**](ProductApi.md#priceTiers) | **GET** /api/Product/PriceTiers | Get price tiers
[**pricesAndStockMultipleProducts**](ProductApi.md#pricesAndStockMultipleProducts) | **GET** /api/Product/PricesAndStock | Get price and stock information for specified products
[**pricesAndStockSizeV14**](ProductApi.md#pricesAndStockSizeV14) | **POST** /api/Product/PricesAndStock | Get price and stock information for specified products
[**product**](ProductApi.md#product) | **GET** /api/Product/Product | Get product by productId
[**productAlternative**](ProductApi.md#productAlternative) | **POST** /api/Product/Alternative | Get product alternatives / replacements for specified products
[**productAlternativeByStore**](ProductApi.md#productAlternativeByStore) | **GET** /api/Product/Alternative | Get product alternatives / replacements for specified store.
[**productAttribute**](ProductApi.md#productAttribute) | **POST** /api/Product/ProductAttribute | Get modified data about product attributes for shop products
[**productAttributeById**](ProductApi.md#productAttributeById) | **GET** /api/Product/ProductAttribute/Options/{attributeId} | Get product attribute including options
[**productAttributeForSingleProduct**](ProductApi.md#productAttributeForSingleProduct) | **GET** /api/Product/ProductAttribute/{productId} | Get product attributes for product
[**productAttributeSets**](ProductApi.md#productAttributeSets) | **GET** /api/Product/ProductAttributeSet | Get product attribute sets including underlying attributes. Please be advised: underlying attributes are returned without options.
[**productAttributes**](ProductApi.md#productAttributes) | **GET** /api/Product/ProductAttribute | Get all product attributes (incl. options if applicable).
[**productAttributesBySelection**](ProductApi.md#productAttributesBySelection) | **POST** /api/Product/ProductAttributeBySelection | Get product attributes for a selection of products
[**productAttributesInclOptions**](ProductApi.md#productAttributesInclOptions) | **GET** /api/Product/ProductAttribute/Options | Get product attribute sets including options
[**productAttributesInclOptionsByHash**](ProductApi.md#productAttributesInclOptionsByHash) | **POST** /api/Product/ProductAttribute/Options | Get product attribute including options
[**productAvailability**](ProductApi.md#productAvailability) | **GET** /api/Product/ProductAvailability | Get a list of all product availability changes from a specific store since a certain date+time
[**productDeliveryDays**](ProductApi.md#productDeliveryDays) | **GET** /api/Product/ProductDeliveryDays | Get estimated delivery time for products of specificied store
[**productDeliveryDaysById**](ProductApi.md#productDeliveryDaysById) | **POST** /api/Product/ProductDeliveryDays/ById | Get estimated delivery times for specified products of specificied store
[**productEan**](ProductApi.md#productEan) | **GET** /api/Product/Ean | Get additional EANs for products, as specified by store.
[**productEanById**](ProductApi.md#productEanById) | **GET** /api/Product/Ean/{productId} | Get additional EANs for specified product.
[**productSynonym**](ProductApi.md#productSynonym) | **GET** /api/Product/Synonym | Get synonyms for product descriptions.
[**productsForSale**](ProductApi.md#productsForSale) | **GET** /api/Product/ProductsForSale | Get all products available for sale in ERP
[**promotionalPrice**](ProductApi.md#promotionalPrice) | **GET** /api/Product/PromotionalPrice | Get promotional price and available stock for products currently promoted
[**relatedProduct**](ProductApi.md#relatedProduct) | **GET** /api/Product/RelatedProduct/{storeId}/{productId} | Get related products for specified product
[**relatedProducts**](ProductApi.md#relatedProducts) | **GET** /api/Product/RelatedProduct/{storeId} | Get related products for specified store
[**shopProductInformation**](ProductApi.md#shopProductInformation) | **GET** /api/Product/ShopProducts | Get shop product information
[**shopProductsV13**](ProductApi.md#shopProductsV13) | **POST** /api/Product/ShopProducts | Get modified shop product information based on parsed HashData recieved at product retrieval.


# **addProductV14**
> addProductV14(productInformation, storeId, languageId)

Add product to ERP from Product Information Management system

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var productInformation = new ProductInformation(); // ProductInformation | Product details
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop</a>. When 0, keywords will be added to all stores.
var languageId = 56; // int | Language ID for keywords, get languageId from <a href=\"?deepLinking=true#/Language/Get\">/api/Language</a> 0 = default language.

try { 
    api_instance.addProductV14(productInformation, storeId, languageId);
} catch (e) {
    print("Exception when calling ProductApi->addProductV14: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productInformation** | [**ProductInformation**](ProductInformation.md)| Product details | [optional] 
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop&lt;/a&gt;. When 0, keywords will be added to all stores. | [optional] [default to 0]
 **languageId** | **int**| Language ID for keywords, get languageId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Language/Get\&quot;&gt;/api/Language&lt;/a&gt; 0 &#x3D; default language. | [optional] [default to 0]

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **allPackageInformation**
> List<V12Package> allPackageInformation(languageId)

Get package information

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var languageId = 56; // int | Get languageId from <a href=\"?deepLinking=true#/Language/Get\">/api/Language</a>

try { 
    var result = api_instance.allPackageInformation(languageId);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->allPackageInformation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **languageId** | **int**| Get languageId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Language/Get\&quot;&gt;/api/Language&lt;/a&gt; | [optional] 

### Return type

[**List<V12Package>**](V12Package.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **articleGroup**
> List<ArticleGroup> articleGroup()

Get article groups including applicable ledger accounts

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();

try { 
    var result = api_instance.articleGroup();
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->articleGroup: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<ArticleGroup>**](ArticleGroup.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10
 - **Accept**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **articleGroupById**
> List<ArticleGroup> articleGroupById(id)

Get article group by Id including applicable ledger accounts

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var id = 56; // int | Group Id of article group, as retrievable from <a href=\"?deepLinking=true#/Product/ArticleGroup\">/api/Product/ArticleGroup</a>.

try { 
    var result = api_instance.articleGroupById(id);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->articleGroupById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Group Id of article group, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/ArticleGroup\&quot;&gt;/api/Product/ArticleGroup&lt;/a&gt;. | 

### Return type

[**List<ArticleGroup>**](ArticleGroup.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10
 - **Accept**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **articleSubGroups**
> List<ArticleGroup> articleSubGroups(articleGroupId)

Get article sub groups, optionally specified by parent article group ID.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var articleGroupId = 56; // int | ID of parent article group, as retrievable from <a href=\"?deepLinking=true#/Product/ArticleGroup\">/api/Product/ArticleGroup</a>.              If articleGroupId = 0, all article sub groups will be returned. With a valid article group ID, only the article sub groups of the parent will be returned.

try { 
    var result = api_instance.articleSubGroups(articleGroupId);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->articleSubGroups: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **articleGroupId** | **int**| ID of parent article group, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/ArticleGroup\&quot;&gt;/api/Product/ArticleGroup&lt;/a&gt;.              If articleGroupId &#x3D; 0, all article sub groups will be returned. With a valid article group ID, only the article sub groups of the parent will be returned. | [optional] 

### Return type

[**List<ArticleGroup>**](ArticleGroup.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10
 - **Accept**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **branchAvailability**
> List<V13BranchAvailabilityResult> branchAvailability(companyId, productId)

Get a list of all product availability per branch for a specific company

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var companyId = 56; // int | Get company ID from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a>
var productId = productId_example; // String | Get product ID from <a href=\"?deepLinking=true#/Product/Get\">/api/Product</a>

try { 
    var result = api_instance.branchAvailability(companyId, productId);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->branchAvailability: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get company ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/Get\&quot;&gt;/api/Company&lt;/a&gt; | [optional] 
 **productId** | **String**| Get product ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/Get\&quot;&gt;/api/Product&lt;/a&gt; | [optional] 

### Return type

[**List<V13BranchAvailabilityResult>**](V13BranchAvailabilityResult.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **brands**
> List<Brand> brands()

Return a list of all product brands.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();

try { 
    var result = api_instance.brands();
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->brands: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Brand>**](Brand.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCustomerProductReference**
> CustomerProductReference createCustomerProductReference(request)

Create customer product reference in ERP for specified customer and product

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var request = new CustomerProductReferenceRequest(); // CustomerProductReferenceRequest | 

try { 
    var result = api_instance.createCustomerProductReference(request);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->createCustomerProductReference: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CustomerProductReferenceRequest**](CustomerProductReferenceRequest.md)|  | [optional] 

### Return type

[**CustomerProductReference**](CustomerProductReference.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerProductReference**
> CustomerProductReference customerProductReference(customerId, productId)

Get customer product references for specified customer and product

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var customerId = 56; // int | Get customer ID from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a>
var productId = productId_example; // String | Get product ID from <a href=\"?deepLinking=true#/Product/Get\">/api/Product</a>

try { 
    var result = api_instance.customerProductReference(customerId, productId);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->customerProductReference: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| Get customer ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/GetAllCustomers\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **productId** | **String**| Get product ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/Get\&quot;&gt;/api/Product&lt;/a&gt; | 

### Return type

[**CustomerProductReference**](CustomerProductReference.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerProductReferenceList**
> List<CustomerProductReference> customerProductReferenceList(customerId)

Get a list of customer product references for specified customer

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var customerId = 56; // int | Get customer ID from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a>

try { 
    var result = api_instance.customerProductReferenceList(customerId);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->customerProductReferenceList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| Get customer ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/GetAllCustomers\&quot;&gt;/api/Customer&lt;/a&gt; | 

### Return type

[**List<CustomerProductReference>**](CustomerProductReference.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerSpecific**
> List<CustomerSpecificProducts> customerSpecific(storeId)

Get customer specific products

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var storeId = 56; // int | Store ID, as retrievable from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop</a>

try { 
    var result = api_instance.customerSpecific(storeId);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->customerSpecific: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Store ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] [default to 0]

### Return type

[**List<CustomerSpecificProducts>**](CustomerSpecificProducts.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10
 - **Accept**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerSpecificById**
> List<CustomerSpecificProducts> customerSpecificById(customerId, storeId)

Get customer specific products for specified customer

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var customerId = 56; // int | Customer ID, as retrievable from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a>
var storeId = 56; // int | Store ID, as retrievable from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop</a>

try { 
    var result = api_instance.customerSpecificById(customerId, storeId);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->customerSpecificById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| Customer ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/GetAllCustomers\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **storeId** | **int**| Store ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] [default to 0]

### Return type

[**List<CustomerSpecificProducts>**](CustomerSpecificProducts.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10
 - **Accept**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomerProductReference**
> CustomerProductReference deleteCustomerProductReference(customerId, productId)

Remove customer product reference in ERP for specified customer and product

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var customerId = 56; // int | Get customer ID from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a>
var productId = productId_example; // String | Get product ID from <a href=\"?deepLinking=true#/Product/Get\">/api/Product</a>

try { 
    var result = api_instance.deleteCustomerProductReference(customerId, productId);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->deleteCustomerProductReference: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| Get customer ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/GetAllCustomers\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 
 **productId** | **String**| Get product ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/Get\&quot;&gt;/api/Product&lt;/a&gt; | [optional] 

### Return type

[**CustomerProductReference**](CustomerProductReference.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9
 - **Accept**: application/json;v=1.9, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProduct**
> bool deleteProduct(productId)

Delete product in ERP

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var productId = productId_example; // String | Get product ID from <a href=\"?deepLinking=true#/Product/Get\">/api/Product</a>

try { 
    var result = api_instance.deleteProduct(productId);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->deleteProduct: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**| Get product ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/Get\&quot;&gt;/api/Product&lt;/a&gt; | [optional] 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editCustomerProductReference**
> CustomerProductReference editCustomerProductReference(request)

Edit customer product reference in ERP for specified customer and product

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var request = new CustomerProductReferenceRequest(); // CustomerProductReferenceRequest | 

try { 
    var result = api_instance.editCustomerProductReference(request);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->editCustomerProductReference: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CustomerProductReferenceRequest**](CustomerProductReferenceRequest.md)|  | [optional] 

### Return type

[**CustomerProductReference**](CustomerProductReference.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editProductV14**
> bool editProductV14(productInformation, storeId, languageId, companyId)

Edit product in ERP from Product Information Management system

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var productInformation = new ProductInformation(); // ProductInformation | Product details
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Get\">/api/Webshop</a> When 0, keywords will be added to all stores.
var languageId = 56; // int | Language ID for keywords, get languageId from <a href=\"?deepLinking=true#/Language/Get\">/api/Language</a>
var companyId = 56; // int | Company ID for price mutation, get company ID from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a>

try { 
    var result = api_instance.editProductV14(productInformation, storeId, languageId, companyId);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->editProductV14: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productInformation** | [**ProductInformation**](ProductInformation.md)| Product details | [optional] 
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Get\&quot;&gt;/api/Webshop&lt;/a&gt; When 0, keywords will be added to all stores. | [optional] 
 **languageId** | **int**| Language ID for keywords, get languageId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Language/Get\&quot;&gt;/api/Language&lt;/a&gt; | [optional] [default to 0]
 **companyId** | **int**| Company ID for price mutation, get company ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/Get\&quot;&gt;/api/Company&lt;/a&gt; | [optional] [default to 0]

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductInformation**
> ProductInformation getProductInformation(productId, storeId, languageId)

Get Product information for specified product

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var productId = productId_example; // String | Get product ID from <a href=\"?deepLinking=true#/Product/Get\">/api/Product</a>
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Get\">/api/Webshop</a>
var languageId = 56; // int | Get languageId from <a href=\"?deepLinking=true#/Language/Get\">/api/Language</a>

try { 
    var result = api_instance.getProductInformation(productId, storeId, languageId);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->getProductInformation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**| Get product ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/Get\&quot;&gt;/api/Product&lt;/a&gt; | [optional] 
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Get\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] 
 **languageId** | **int**| Get languageId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Language/Get\&quot;&gt;/api/Language&lt;/a&gt; | [optional] 

### Return type

[**ProductInformation**](ProductInformation.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductInformationPaged**
> List<ProductInformation> getProductInformationPaged(storeId, languageId, pageNumber, pageSize)

Get product information for shop products

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop</a>
var languageId = 56; // int | Get languageId from <a href=\"?deepLinking=true#/Language/GetAllLanguages\">/api/Language</a>
var pageNumber = 56; // int | Page number for response result
var pageSize = 56; // int | Number of records in result (max. 40)

try { 
    var result = api_instance.getProductInformationPaged(storeId, languageId, pageNumber, pageSize);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->getProductInformationPaged: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] 
 **languageId** | **int**| Get languageId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Language/GetAllLanguages\&quot;&gt;/api/Language&lt;/a&gt; | [optional] 
 **pageNumber** | **int**| Page number for response result | [optional] 
 **pageSize** | **int**| Number of records in result (max. 40) | [optional] 

### Return type

[**List<ProductInformation>**](ProductInformation.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11
 - **Accept**: application/json;v=1.12, application/json;v=1.11

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **package**
> V12Package package(unitId, languageId)

Get package information

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var unitId = 56; // int | Get unitId from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Product/Package/Get\">/api/Product/Package</a>
var languageId = 56; // int | Get language ID from <a href=\"?deepLinking=true#/Language/Get\">/api/Language</a>

try { 
    var result = api_instance.package(unitId, languageId);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->package: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unitId** | **int**| Get unitId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Product/Package/Get\&quot;&gt;/api/Product/Package&lt;/a&gt; | 
 **languageId** | **int**| Get language ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Language/Get\&quot;&gt;/api/Language&lt;/a&gt; | [optional] 

### Return type

[**V12Package**](V12Package.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **priceAndStockStoreForRange**
> List<V14PriceAndStock> priceAndStockStoreForRange(storeId, companyId, branchId, customerId, offset, limit)

Get price and stock information for specified store and range

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Get\">/api/Webshop</a>
var companyId = 56; // int | Get company ID from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a>
var branchId = 56; // int | Get branch ID from <a href=\"?deepLinking=true#/Branch/Get\">/api/Branch</a>
var customerId = 56; // int | Get customer ID from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>
var offset = 56; // int | Starting point to return records
var limit = 56; // int | Maximum number of records to return

try { 
    var result = api_instance.priceAndStockStoreForRange(storeId, companyId, branchId, customerId, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->priceAndStockStoreForRange: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Get\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **companyId** | **int**| Get company ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/Get\&quot;&gt;/api/Company&lt;/a&gt; | 
 **branchId** | **int**| Get branch ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Branch/Get\&quot;&gt;/api/Branch&lt;/a&gt; | 
 **customerId** | **int**| Get customer ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **offset** | **int**| Starting point to return records | 
 **limit** | **int**| Maximum number of records to return | 

### Return type

[**List<V14PriceAndStock>**](V14PriceAndStock.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **priceAndStockV14SingleProduct**
> V14PriceAndStock priceAndStockV14SingleProduct(storeId, companyId, branchId, customerId, productId, quantity)

Get price and stock information for specified product

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Get\">/api/Webshop</a>
var companyId = 56; // int | Get company ID from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a>
var branchId = 56; // int | Get branch ID from <a href=\"?deepLinking=true#/Branch/Get\">/api/Branch</a>
var customerId = 56; // int | Get customer ID from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>
var productId = productId_example; // String | Get product ID from <a href=\"?deepLinking=true#/Product/Get\">/api/Product</a>
var quantity = 1.2; // double | Product quantity

try { 
    var result = api_instance.priceAndStockV14SingleProduct(storeId, companyId, branchId, customerId, productId, quantity);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->priceAndStockV14SingleProduct: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Get\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **companyId** | **int**| Get company ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/Get\&quot;&gt;/api/Company&lt;/a&gt; | 
 **branchId** | **int**| Get branch ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Branch/Get\&quot;&gt;/api/Branch&lt;/a&gt; | 
 **customerId** | **int**| Get customer ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **productId** | **String**| Get product ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/Get\&quot;&gt;/api/Product&lt;/a&gt; | 
 **quantity** | **double**| Product quantity | [optional] 

### Return type

[**V14PriceAndStock**](V14PriceAndStock.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **priceTiers**
> PriceTiers priceTiers(companyId, branchId, customerId, projectId, productId)

Get price tiers

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var companyId = 56; // int | Get company ID from <a href=\"?deepLinking=true#/Company/GetAllCompanies\">/api/Company</a>.
var branchId = 56; // int | Get branch ID from <a href=\"?deepLinking=true#/Branch/GetAllBranches\">/api/Branch</a>.
var customerId = 56; // int | Get customer ID from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a>.
var projectId = projectId_example; // String | Get project ID from <a href=\"?deepLinking=true#/Project/GetAllProjects\">/api/Project</a>.
var productId = productId_example; // String | Get product ID from from <a href=\"?deepLinking=true#/Product/ShopProductInformation\">/api/Product</a>.

try { 
    var result = api_instance.priceTiers(companyId, branchId, customerId, projectId, productId);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->priceTiers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get company ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/GetAllCompanies\&quot;&gt;/api/Company&lt;/a&gt;. | [optional] 
 **branchId** | **int**| Get branch ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Branch/GetAllBranches\&quot;&gt;/api/Branch&lt;/a&gt;. | [optional] 
 **customerId** | **int**| Get customer ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/GetAllCustomers\&quot;&gt;/api/Customer&lt;/a&gt;. | [optional] 
 **projectId** | **String**| Get project ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Project/GetAllProjects\&quot;&gt;/api/Project&lt;/a&gt;. | [optional] 
 **productId** | **String**| Get product ID from from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/ShopProductInformation\&quot;&gt;/api/Product&lt;/a&gt;. | [optional] 

### Return type

[**PriceTiers**](PriceTiers.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10
 - **Accept**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pricesAndStockMultipleProducts**
> List<V14PriceAndStock> pricesAndStockMultipleProducts(storeId, companyId, branchId, customerId, productIds, quantities, attributes)

Get price and stock information for specified products

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Get\">/api/Webshop</a>
var companyId = 56; // int | Get company ID from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a>
var branchId = 56; // int | Get branch ID from <a href=\"?deepLinking=true#/Branch/Get\">/api/Branch</a>
var customerId = 56; // int | Get customer ID from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>
var productIds = []; // List<String> | Get product IDs from <a href=\"?deepLinking=true#/Product/Get\">/api/Product</a>
var quantities = []; // List<double> | Product quantity
var attributes = []; // List<String> | Product attributes

try { 
    var result = api_instance.pricesAndStockMultipleProducts(storeId, companyId, branchId, customerId, productIds, quantities, attributes);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->pricesAndStockMultipleProducts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Get\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **companyId** | **int**| Get company ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/Get\&quot;&gt;/api/Company&lt;/a&gt; | 
 **branchId** | **int**| Get branch ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Branch/Get\&quot;&gt;/api/Branch&lt;/a&gt; | 
 **customerId** | **int**| Get customer ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **productIds** | [**List&lt;String&gt;**](String.md)| Get product IDs from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/Get\&quot;&gt;/api/Product&lt;/a&gt; | 
 **quantities** | [**List&lt;double&gt;**](double.md)| Product quantity | [optional] 
 **attributes** | [**List&lt;String&gt;**](String.md)| Product attributes | [optional] 

### Return type

[**List<V14PriceAndStock>**](V14PriceAndStock.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pricesAndStockSizeV14**
> List<V14PriceAndStock> pricesAndStockSizeV14(priceAndStockRequest)

Get price and stock information for specified products

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var priceAndStockRequest = new PriceAndStockRequest(); // PriceAndStockRequest | 

try { 
    var result = api_instance.pricesAndStockSizeV14(priceAndStockRequest);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->pricesAndStockSizeV14: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **priceAndStockRequest** | [**PriceAndStockRequest**](PriceAndStockRequest.md)|  | [optional] 

### Return type

[**List<V14PriceAndStock>**](V14PriceAndStock.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product**
> List<Product> product(id, type, supplierEan)

Get product by productId

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var id = id_example; // String | Get product by Id (can be ProductId,Ean or SupplierId based on specified Type
var type = type_example; // String | Specifies type of supplied Id
var supplierEan = supplierEan_example; // String | Optional set supplier ean

try { 
    var result = api_instance.product(id, type, supplierEan);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->product: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Get product by Id (can be ProductId,Ean or SupplierId based on specified Type | [optional] 
 **type** | **String**| Specifies type of supplied Id | [optional] [default to 0]
 **supplierEan** | **String**| Optional set supplier ean | [optional] 

### Return type

[**List<Product>**](Product.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productAlternative**
> List<ProductAlternative> productAlternative(productIds)

Get product alternatives / replacements for specified products

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var productIds = [new List&lt;String&gt;()]; // List<String> | Product ID for which alternatives are applicable, as retrievable from <a href=\"?deepLinking=true#/Product/ShopProductInformation\">/api/Product</a>.

try { 
    var result = api_instance.productAlternative(productIds);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->productAlternative: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productIds** | **List&lt;String&gt;**| Product ID for which alternatives are applicable, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/ShopProductInformation\&quot;&gt;/api/Product&lt;/a&gt;. | [optional] 

### Return type

[**List<ProductAlternative>**](ProductAlternative.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9
 - **Accept**: application/json;v=1.9, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productAlternativeByStore**
> List<ProductAlternative> productAlternativeByStore(storeId)

Get product alternatives / replacements for specified store.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop</a>

try { 
    var result = api_instance.productAlternativeByStore(storeId);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->productAlternativeByStore: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] 

### Return type

[**List<ProductAlternative>**](ProductAlternative.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9
 - **Accept**: application/json;v=1.9, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productAttribute**
> ProductAttribute productAttribute(storeId, languageId, hashData)

Get modified data about product attributes for shop products

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Get\">/api/Webshop</a>
var languageId = 56; // int | Get language ID from <a href=\"?deepLinking=true#/Language/Get\">/api/Language</a>
var hashData = [new List&lt;ShopProductHash&gt;()]; // List<ShopProductHash> | Hashdata for products with attributes

try { 
    var result = api_instance.productAttribute(storeId, languageId, hashData);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->productAttribute: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Get\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] 
 **languageId** | **int**| Get language ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Language/Get\&quot;&gt;/api/Language&lt;/a&gt; | [optional] 
 **hashData** | [**List&lt;ShopProductHash&gt;**](ShopProductHash.md)| Hashdata for products with attributes | [optional] 

### Return type

[**ProductAttribute**](ProductAttribute.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productAttributeById**
> ProductAttribute productAttributeById(attributeId)

Get product attribute including options

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var attributeId = 56; // int | Get attribute ID from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.3#/Product/ProductAttribute/Options\">/api/Product</a>

try { 
    var result = api_instance.productAttributeById(attributeId);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->productAttributeById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attributeId** | **int**| Get attribute ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.3#/Product/ProductAttribute/Options\&quot;&gt;/api/Product&lt;/a&gt; | 

### Return type

[**ProductAttribute**](ProductAttribute.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productAttributeForSingleProduct**
> ProductAttribute productAttributeForSingleProduct(productId, storeId, languageId)

Get product attributes for product

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var productId = productId_example; // String | Get product ID from <a href=\"?deepLinking=true#/Product/Get\">/api/Product</a>
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Get\">/api/Webshop</a>
var languageId = 56; // int | Get language ID from <a href=\"?deepLinking=true#/Language/Get\">/api/Language</a>

try { 
    var result = api_instance.productAttributeForSingleProduct(productId, storeId, languageId);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->productAttributeForSingleProduct: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**| Get product ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/Get\&quot;&gt;/api/Product&lt;/a&gt; | 
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Get\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] 
 **languageId** | **int**| Get language ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Language/Get\&quot;&gt;/api/Language&lt;/a&gt; | [optional] 

### Return type

[**ProductAttribute**](ProductAttribute.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productAttributeSets**
> List<AttributeSet> productAttributeSets()

Get product attribute sets including underlying attributes. Please be advised: underlying attributes are returned without options.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();

try { 
    var result = api_instance.productAttributeSets();
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->productAttributeSets: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<AttributeSet>**](AttributeSet.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11
 - **Accept**: application/json;v=1.12, application/json;v=1.11

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productAttributes**
> List<ProductAttribute> productAttributes()

Get all product attributes (incl. options if applicable).

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();

try { 
    var result = api_instance.productAttributes();
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->productAttributes: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<ProductAttribute>**](ProductAttribute.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11
 - **Accept**: application/json;v=1.12, application/json;v=1.11

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productAttributesBySelection**
> List<AttributeProduct> productAttributesBySelection(storeId, languageId, productIds)

Get product attributes for a selection of products

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop</a>
var languageId = 56; // int | Get language ID from <a href=\"?deepLinking=true#//Language/GetAllLanguages\">/api/Language</a>
var productIds = [new List&lt;String&gt;()]; // List<String> | List of product IDs, as retrievable from <a href=\"?deepLinking=true#/Product/ShopProductInformation\">/api/Product</a>

try { 
    var result = api_instance.productAttributesBySelection(storeId, languageId, productIds);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->productAttributesBySelection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] 
 **languageId** | **int**| Get language ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#//Language/GetAllLanguages\&quot;&gt;/api/Language&lt;/a&gt; | [optional] 
 **productIds** | **List&lt;String&gt;**| List of product IDs, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/ShopProductInformation\&quot;&gt;/api/Product&lt;/a&gt; | [optional] 

### Return type

[**List<AttributeProduct>**](AttributeProduct.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10
 - **Accept**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productAttributesInclOptions**
> ProductAttribute productAttributesInclOptions()

Get product attribute sets including options

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();

try { 
    var result = api_instance.productAttributesInclOptions();
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->productAttributesInclOptions: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProductAttribute**](ProductAttribute.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productAttributesInclOptionsByHash**
> ProductAttribute productAttributesInclOptionsByHash(shopHashes)

Get product attribute including options

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var shopHashes = [new List&lt;ShopHash&gt;()]; // List<ShopHash> | 

try { 
    var result = api_instance.productAttributesInclOptionsByHash(shopHashes);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->productAttributesInclOptionsByHash: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shopHashes** | [**List&lt;ShopHash&gt;**](ShopHash.md)|  | [optional] 

### Return type

[**ProductAttribute**](ProductAttribute.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productAvailability**
> ProductAvailabilityResult productAvailability(storeId, fromDate)

Get a list of all product availability changes from a specific store since a certain date+time

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var storeId = 56; // int | 
var fromDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try { 
    var result = api_instance.productAvailability(storeId, fromDate);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->productAvailability: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**|  | [optional] 
 **fromDate** | **DateTime**|  | [optional] 

### Return type

[**ProductAvailabilityResult**](ProductAvailabilityResult.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productDeliveryDays**
> ProductDeliveryDaysResult productDeliveryDays(storeId)

Get estimated delivery time for products of specificied store

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var storeId = 56; // int | 

try { 
    var result = api_instance.productDeliveryDays(storeId);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->productDeliveryDays: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**|  | [optional] 

### Return type

[**ProductDeliveryDaysResult**](ProductDeliveryDaysResult.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productDeliveryDaysById**
> ProductDeliveryDaysResult productDeliveryDaysById(request)

Get estimated delivery times for specified products of specificied store

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var request = new DeliveryDaysRequest(); // DeliveryDaysRequest | 

try { 
    var result = api_instance.productDeliveryDaysById(request);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->productDeliveryDaysById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**DeliveryDaysRequest**](DeliveryDaysRequest.md)|  | [optional] 

### Return type

[**ProductDeliveryDaysResult**](ProductDeliveryDaysResult.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9
 - **Accept**: application/json;v=1.9, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productEan**
> List<Ean> productEan(storeId)

Get additional EANs for products, as specified by store.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop</a>

try { 
    var result = api_instance.productEan(storeId);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->productEan: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] 

### Return type

[**List<Ean>**](Ean.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productEanById**
> List<Ean> productEanById(productId)

Get additional EANs for specified product.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var productId = productId_example; // String | Get product ID from <a href=\"?deepLinking=true#/Product/ShopProductInformation\">/api/Product</a>

try { 
    var result = api_instance.productEanById(productId);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->productEanById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**| Get product ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/ShopProductInformation\&quot;&gt;/api/Product&lt;/a&gt; | 

### Return type

[**List<Ean>**](Ean.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9
 - **Accept**: application/json;v=1.9, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productSynonym**
> List<ProductSynonym> productSynonym()

Get synonyms for product descriptions.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();

try { 
    var result = api_instance.productSynonym();
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->productSynonym: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<ProductSynonym>**](ProductSynonym.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productsForSale**
> List<V13ShopProduct> productsForSale(storeId, offset, limit)

Get all products available for sale in ERP

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Get\">/api/Webshop</a>
var offset = 56; // int | Start point for a limited request
var limit = 56; // int | Max number of results in request

try { 
    var result = api_instance.productsForSale(storeId, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->productsForSale: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Get\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] 
 **offset** | **int**| Start point for a limited request | [optional] 
 **limit** | **int**| Max number of results in request | [optional] 

### Return type

[**List<V13ShopProduct>**](V13ShopProduct.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10
 - **Accept**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **promotionalPrice**
> List<PromotionalPriceAndStock> promotionalPrice(storeId, companyId, branchId)

Get promotional price and available stock for products currently promoted

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop</a>
var companyId = 56; // int | Get company ID from <a href=\"?deepLinking=true#/Company/GetAllCompanies\">/api/Company</a>
var branchId = 56; // int | Get branch ID from <a href=\"?deepLinking=true#/Branch/GetAllBranches\">/api/Branch</a>. When no branch ID is submitted, stock information for all branches is returned.

try { 
    var result = api_instance.promotionalPrice(storeId, companyId, branchId);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->promotionalPrice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **companyId** | **int**| Get company ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/GetAllCompanies\&quot;&gt;/api/Company&lt;/a&gt; | 
 **branchId** | **int**| Get branch ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Branch/GetAllBranches\&quot;&gt;/api/Branch&lt;/a&gt;. When no branch ID is submitted, stock information for all branches is returned. | [optional] 

### Return type

[**List<PromotionalPriceAndStock>**](PromotionalPriceAndStock.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **relatedProduct**
> V12RelatedProduct relatedProduct(storeId, productId)

Get related products for specified product

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var storeId = 56; // int | Get storeId from <a href=\"?deepLinking=true#/Webshop/Get\">/api/Webshop</a>
var productId = productId_example; // String | Get productId from <a href=\"?deepLinking=true#/Product/Get\">/api/Product</a>

try { 
    var result = api_instance.relatedProduct(storeId, productId);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->relatedProduct: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Get\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **productId** | **String**| Get productId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/Get\&quot;&gt;/api/Product&lt;/a&gt; | 

### Return type

[**V12RelatedProduct**](V12RelatedProduct.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **relatedProducts**
> List<V12RelatedProduct> relatedProducts(storeId)

Get related products for specified store

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var storeId = 56; // int | Get storeId from <a href=\"?deepLinking=true#/Webshop/Get\">/api/Webshop</a>

try { 
    var result = api_instance.relatedProducts(storeId);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->relatedProducts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Get\&quot;&gt;/api/Webshop&lt;/a&gt; | 

### Return type

[**List<V12RelatedProduct>**](V12RelatedProduct.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **shopProductInformation**
> List<V13ShopProduct> shopProductInformation(storeId, offset, limit)

Get shop product information

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var storeId = 56; // int | 
var offset = 56; // int | 
var limit = 56; // int | 

try { 
    var result = api_instance.shopProductInformation(storeId, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling ProductApi->shopProductInformation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**|  | [optional] 
 **offset** | **int**|  | [optional] 
 **limit** | **int**|  | [optional] 

### Return type

[**List<V13ShopProduct>**](V13ShopProduct.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **shopProductsV13**
> shopProductsV13(storeId, hashData)

Get modified shop product information based on parsed HashData recieved at product retrieval.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductApi();
var storeId = 56; // int | 
var hashData = [new List&lt;ShopProductHash&gt;()]; // List<ShopProductHash> | 

try { 
    api_instance.shopProductsV13(storeId, hashData);
} catch (e) {
    print("Exception when calling ProductApi->shopProductsV13: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**|  | [optional] 
 **hashData** | [**List&lt;ShopProductHash&gt;**](ShopProductHash.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

