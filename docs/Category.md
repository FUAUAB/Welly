# swagger.model.Category

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**storeId** | **int** | Store ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop/Store&lt;/a&gt; | [optional] [default to null]
**languageId** | **int** | Language ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Language/Get\&quot;&gt;/api/Language&lt;/a&gt; | [optional] [default to null]
**categoryId** | **int** | Category ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Category/Get\&quot;&gt;/api/Webshop/Category&lt;/a&gt; | [optional] [default to null]
**position** | **int** | Position of category in category order | [optional] [default to null]
**parentId** | **int** | Id of parent category, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Category/Get\&quot;&gt;/api/Webshop/Category&lt;/a&gt; | [optional] [default to null]
**description** | **String** | Name of category | [optional] [default to null]
**longDescription** | **String** | Comprehensive description of category | [optional] [default to null]
**metaKeywords** | **List&lt;String&gt;** | Metakeywords for category | [optional] [default to []]
**metaDescription** | **String** | Meta description for category | [optional] [default to null]
**showOnHomepage** | **bool** | Is category shown on homepage? | [optional] [default to null]
**children** | **List&lt;int&gt;** | List of category&#39;s children, if applicable | [optional] [default to []]
**attributeSetId** | **int** | Id of attribute set for category | [optional] [default to null]
**dataHash** | **String** | Datahash of category | [optional] [default to null]
**productIds** | **List&lt;String&gt;** | Product IDs that are indexed in this level | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


