# swagger.model.WebUser

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Employee ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Employee/GetCustomerEmployees\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] [default to null]
**email** | **String** | E-mail address | [default to null]
**username** | **String** | User name | [default to null]
**group** | [**UmsModelsUmsGroup**](UmsModelsUmsGroup.md) | UMS group where user is part of, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/WebUser/GroupsByCustomerId\&quot;&gt;/api/Webuser&lt;/a&gt; | [optional] [default to null]
**subGroup** | [**UmsModelsUmsGroup**](UmsModelsUmsGroup.md) | UMS sub group where user is part of, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/WebUser/SubGroups\&quot;&gt;/api/Webuser&lt;/a&gt; | [optional] [default to null]
**userSettings** | [**UmsModelsUserSettings**](UmsModelsUserSettings.md) | Webshop user settings | [default to null]
**budgetHistory** | [**List&lt;UmsModelsBudgetUsage&gt;**](UmsModelsBudgetUsage.md) | Webshop user budget history | [optional] [default to []]
**authorizationSettings** | [**UmsModelsAuthorizationSettings**](UmsModelsAuthorizationSettings.md) | Authorization settings | [default to null]
**employee** | [**UmsModelsEmployee**](UmsModelsEmployee.md) | Basic employee data | [default to null]
**ccEmails** | **String** | CC emails for webshop user, separated by semicolon | [optional] [default to null]
**projects** | [**List&lt;UmsModelsProjectV17&gt;**](UmsModelsProjectV17.md) | Optional list of projects where webshop user&#39;s orders can be recorded | [optional] [default to []]
**shippingAddress** | [**UmsModelsShippingAddressV17**](UmsModelsShippingAddressV17.md) | Optional shipping address where webshop user&#39;s orders can be send to | [optional] [default to null]
**productSelections** | [**List&lt;UmsModelsProductSelection&gt;**](UmsModelsProductSelection.md) | List of product selections for webshop user, no product selection &#x3D; full webshop product range | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


