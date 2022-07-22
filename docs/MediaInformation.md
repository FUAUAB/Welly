# swagger.model.MediaInformation

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**productId** | **String** | ID of Product for this media information, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/ShopProductInformation\&quot;&gt;/api/Product&lt;/a&gt; | [optional] [default to null]
**languageId** | **int** | Language Id where media will be attributed to, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Language/Get\&quot;&gt;/api/Language&lt;/a&gt; | [optional] [default to null]
**storeId** | **int** | Store Id where media will be attributed to, as retrievable from &lt;a href&#x3D;\&quot;?filter&#x3D;Webshop\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] [default to null]
**mediaId** | **int** | Id for media, as registered in ERP and as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Media/Media\&quot;&gt;/api/Media/Media&lt;/a&gt; | [optional] [default to null]
**sequenceId** | **int** | Sequence Id of media | [optional] [default to null]
**mediaType** | **String** | Media type, where \&quot;AB\&quot; &#x3D; picture, \&quot;DC\&quot; &#x3D; document, \&quot;DP\&quot; &#x3D; Document of Performace (DoP), \&quot;VB\&quot; &#x3D; safety data sheet, \&quot;KM\&quot; &#x3D; certification, \&quot;VD\&quot; &#x3D; video, \&quot;EV\&quot; &#x3D; embedded video | [optional] [default to null]
**source** | **String** | Source of media | [optional] [default to null]
**description** | **String** | Description of media | [optional] [default to null]
**hashCode** | **String** | Hash code for media | [optional] [default to null]
**extension** | **String** | Extension of media file | [optional] [default to null]
**isDefault** | **bool** | In case of media type picture, picture is default image. | [optional] [default to null]
**toUpdate** | **bool** | Media will be updated | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


