# swagger.model.CompanyDetails

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**companyId** | **int** | Company ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/GetAllCompanies\&quot;&gt;/api/Company&lt;/a&gt; | [optional] [default to null]
**companyName** | **String** | Company name | [optional] [default to null]
**address** | [**V19Address**](V19Address.md) | Company visiting address | [optional] [default to null]
**postOfficeBox** | [**PostOfficeBox**](PostOfficeBox.md) | Company PO Box | [optional] [default to null]
**contactInformation** | [**ContactInformation**](ContactInformation.md) | Company contact information | [optional] [default to null]
**fiscalNumber** | **String** | Company fiscal number | [optional] [default to null]
**chamberOfCommerceId** | **String** | Company Chamber of Commerce Identification | [optional] [default to null]
**gln** | **String** | Company Global Location Number | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


