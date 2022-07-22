part of swagger.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {
  String basePath;
  var client = new IOClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "https://localhost"}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['Bearer'] = new ApiKeyAuth("header", "Authorization");
  }

  void addDefaultHeader(String key, String value) {
    _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'AccountInfo':
          return new AccountInfo.fromJson(value);
        case 'Address':
          return new Address.fromJson(value);
        case 'AddressInformation':
          return new AddressInformation.fromJson(value);
        case 'Alternative':
          return new Alternative.fromJson(value);
        case 'Amount':
          return new Amount.fromJson(value);
        case 'Appointment':
          return new Appointment.fromJson(value);
        case 'ArticleGroup':
          return new ArticleGroup.fromJson(value);
        case 'AttachedFile':
          return new AttachedFile.fromJson(value);
        case 'AttributeProduct':
          return new AttributeProduct.fromJson(value);
        case 'AttributeSet':
          return new AttributeSet.fromJson(value);
        case 'AuthorizationRequest':
          return new AuthorizationRequest.fromJson(value);
        case 'AuthorizationResult':
          return new AuthorizationResult.fromJson(value);
        case 'Branch':
          return new Branch.fromJson(value);
        case 'BranchInformation':
          return new BranchInformation.fromJson(value);
        case 'Brand':
          return new Brand.fromJson(value);
        case 'Budget':
          return new Budget.fromJson(value);
        case 'BudgetUsageDetail':
          return new BudgetUsageDetail.fromJson(value);
        case 'Category':
          return new Category.fromJson(value);
        case 'CategorySimple':
          return new CategorySimple.fromJson(value);
        case 'ChangeOrderRequest':
          return new ChangeOrderRequest.fromJson(value);
        case 'CheckedAddress':
          return new CheckedAddress.fromJson(value);
        case 'Company':
          return new Company.fromJson(value);
        case 'CompanyDetails':
          return new CompanyDetails.fromJson(value);
        case 'CompanyInformation':
          return new CompanyInformation.fromJson(value);
        case 'Component':
          return new Component.fromJson(value);
        case 'Composition':
          return new Composition.fromJson(value);
        case 'ContactInformation':
          return new ContactInformation.fromJson(value);
        case 'ContactInformationRequest':
          return new ContactInformationRequest.fromJson(value);
        case 'Cost':
          return new Cost.fromJson(value);
        case 'CostCentre':
          return new CostCentre.fromJson(value);
        case 'CostCentreLevel':
          return new CostCentreLevel.fromJson(value);
        case 'CostCentrePerGeneralLedgerAccount':
          return new CostCentrePerGeneralLedgerAccount.fromJson(value);
        case 'CostCentreValue':
          return new CostCentreValue.fromJson(value);
        case 'CostDetail':
          return new CostDetail.fromJson(value);
        case 'CostType':
          return new CostType.fromJson(value);
        case 'Country':
          return new Country.fromJson(value);
        case 'CreditRestrictionSurcharge':
          return new CreditRestrictionSurcharge.fromJson(value);
        case 'CrmActivity':
          return new CrmActivity.fromJson(value);
        case 'CrmAppointment':
          return new CrmAppointment.fromJson(value);
        case 'CrmAppointmentRequest':
          return new CrmAppointmentRequest.fromJson(value);
        case 'CultureString':
          return new CultureString.fromJson(value);
        case 'Currency':
          return new Currency.fromJson(value);
        case 'Customer':
          return new Customer.fromJson(value);
        case 'CustomerBranche':
          return new CustomerBranche.fromJson(value);
        case 'CustomerPriceTier':
          return new CustomerPriceTier.fromJson(value);
        case 'CustomerProductReference':
          return new CustomerProductReference.fromJson(value);
        case 'CustomerProductReferenceRequest':
          return new CustomerProductReferenceRequest.fromJson(value);
        case 'CustomerRevenue':
          return new CustomerRevenue.fromJson(value);
        case 'CustomerSpecificProducts':
          return new CustomerSpecificProducts.fromJson(value);
        case 'Delivery':
          return new Delivery.fromJson(value);
        case 'DeliveryChange':
          return new DeliveryChange.fromJson(value);
        case 'DeliveryChangeDetail':
          return new DeliveryChangeDetail.fromJson(value);
        case 'DeliveryDaysRequest':
          return new DeliveryDaysRequest.fromJson(value);
        case 'DeliveryDetails':
          return new DeliveryDetails.fromJson(value);
        case 'DeliveryResult':
          return new DeliveryResult.fromJson(value);
        case 'Dimensions':
          return new Dimensions.fromJson(value);
        case 'DocumentType':
          return new DocumentType.fromJson(value);
        case 'EWSAccount':
          return new EWSAccount.fromJson(value);
        case 'Ean':
          return new Ean.fromJson(value);
        case 'Employee':
          return new Employee.fromJson(value);
        case 'GeneralLedgerAccount':
          return new GeneralLedgerAccount.fromJson(value);
        case 'HotlistDetailed':
          return new HotlistDetailed.fromJson(value);
        case 'InternalInvoice':
          return new InternalInvoice.fromJson(value);
        case 'InternalInvoiceLine':
          return new InternalInvoiceLine.fromJson(value);
        case 'Invoice':
          return new Invoice.fromJson(value);
        case 'Job':
          return new Job.fromJson(value);
        case 'Language':
          return new Language.fromJson(value);
        case 'Ledger':
          return new Ledger.fromJson(value);
        case 'LedgerJournal':
          return new LedgerJournal.fromJson(value);
        case 'LedgerJournalEntry':
          return new LedgerJournalEntry.fromJson(value);
        case 'Level':
          return new Level.fromJson(value);
        case 'Levels':
          return new Levels.fromJson(value);
        case 'LogMessage':
          return new LogMessage.fromJson(value);
        case 'Login':
          return new Login.fromJson(value);
        case 'MarketSegment':
          return new MarketSegment.fromJson(value);
        case 'MatchInternalInvoice':
          return new MatchInternalInvoice.fromJson(value);
        case 'MediaInformation':
          return new MediaInformation.fromJson(value);
        case 'ModelReturn':
          return new ModelReturn.fromJson(value);
        case 'OrderChange':
          return new OrderChange.fromJson(value);
        case 'OrderChangeDetail':
          return new OrderChangeDetail.fromJson(value);
        case 'OrderChangeResult':
          return new OrderChangeResult.fromJson(value);
        case 'OrderLineRequest':
          return new OrderLineRequest.fromJson(value);
        case 'OutstandingPeriod':
          return new OutstandingPeriod.fromJson(value);
        case 'PayShipMethod':
          return new PayShipMethod.fromJson(value);
        case 'PaymentDiscount':
          return new PaymentDiscount.fromJson(value);
        case 'PaymentMethod':
          return new PaymentMethod.fromJson(value);
        case 'Period':
          return new Period.fromJson(value);
        case 'PostOfficeBox':
          return new PostOfficeBox.fromJson(value);
        case 'PriceAndStockRequest':
          return new PriceAndStockRequest.fromJson(value);
        case 'PriceInformation':
          return new PriceInformation.fromJson(value);
        case 'PriceTier':
          return new PriceTier.fromJson(value);
        case 'PriceTiers':
          return new PriceTiers.fromJson(value);
        case 'Product':
          return new Product.fromJson(value);
        case 'ProductAlternative':
          return new ProductAlternative.fromJson(value);
        case 'ProductAttribute':
          return new ProductAttribute.fromJson(value);
        case 'ProductAttributeOption':
          return new ProductAttributeOption.fromJson(value);
        case 'ProductAvailability':
          return new ProductAvailability.fromJson(value);
        case 'ProductAvailabilityResult':
          return new ProductAvailabilityResult.fromJson(value);
        case 'ProductDeliveryDays':
          return new ProductDeliveryDays.fromJson(value);
        case 'ProductDeliveryDaysResult':
          return new ProductDeliveryDaysResult.fromJson(value);
        case 'ProductGroup':
          return new ProductGroup.fromJson(value);
        case 'ProductIdentification':
          return new ProductIdentification.fromJson(value);
        case 'ProductInformation':
          return new ProductInformation.fromJson(value);
        case 'ProductQuantity':
          return new ProductQuantity.fromJson(value);
        case 'ProductSelectionSize':
          return new ProductSelectionSize.fromJson(value);
        case 'ProductSize':
          return new ProductSize.fromJson(value);
        case 'ProductSynonym':
          return new ProductSynonym.fromJson(value);
        case 'ProductTailoredSize':
          return new ProductTailoredSize.fromJson(value);
        case 'Project':
          return new Project.fromJson(value);
        case 'ProjectRequest':
          return new ProjectRequest.fromJson(value);
        case 'ProjectStatus':
          return new ProjectStatus.fromJson(value);
        case 'PromotionalPriceAndStock':
          return new PromotionalPriceAndStock.fromJson(value);
        case 'PurchaseInvoice':
          return new PurchaseInvoice.fromJson(value);
        case 'PurchaseInvoiceLine':
          return new PurchaseInvoiceLine.fromJson(value);
        case 'PurchaseInvoiceOutstandingAmount':
          return new PurchaseInvoiceOutstandingAmount.fromJson(value);
        case 'ReceptionMethod':
          return new ReceptionMethod.fromJson(value);
        case 'Representative':
          return new Representative.fromJson(value);
        case 'RepresentativeType':
          return new RepresentativeType.fromJson(value);
        case 'RequestProductPriceList':
          return new RequestProductPriceList.fromJson(value);
        case 'ReturnDelivery':
          return new ReturnDelivery.fromJson(value);
        case 'ReturnDeliveryOrder':
          return new ReturnDeliveryOrder.fromJson(value);
        case 'ReturnDeliveryOrderLine':
          return new ReturnDeliveryOrderLine.fromJson(value);
        case 'ReturnDetail':
          return new ReturnDetail.fromJson(value);
        case 'ReturnMethod':
          return new ReturnMethod.fromJson(value);
        case 'ReturnReason':
          return new ReturnReason.fromJson(value);
        case 'ReturnedItem':
          return new ReturnedItem.fromJson(value);
        case 'Revenue':
          return new Revenue.fromJson(value);
        case 'RevenueItem':
          return new RevenueItem.fromJson(value);
        case 'SalesUnit':
          return new SalesUnit.fromJson(value);
        case 'Schedule':
          return new Schedule.fromJson(value);
        case 'SegmentCustomer':
          return new SegmentCustomer.fromJson(value);
        case 'ShippingCostRequest':
          return new ShippingCostRequest.fromJson(value);
        case 'ShippingCostResult':
          return new ShippingCostResult.fromJson(value);
        case 'ShippingMethod':
          return new ShippingMethod.fromJson(value);
        case 'ShippingMethodWebshop':
          return new ShippingMethodWebshop.fromJson(value);
        case 'ShopHash':
          return new ShopHash.fromJson(value);
        case 'ShopProductHash':
          return new ShopProductHash.fromJson(value);
        case 'Special':
          return new Special.fromJson(value);
        case 'SpecificProduct':
          return new SpecificProduct.fromJson(value);
        case 'Specification':
          return new Specification.fromJson(value);
        case 'StockChange':
          return new StockChange.fromJson(value);
        case 'StockChangeType':
          return new StockChangeType.fromJson(value);
        case 'Store':
          return new Store.fromJson(value);
        case 'SupplierGeneralLedgerAccounts':
          return new SupplierGeneralLedgerAccounts.fromJson(value);
        case 'SyncAppointments':
          return new SyncAppointments.fromJson(value);
        case 'TaxCategory':
          return new TaxCategory.fromJson(value);
        case 'UMSAddRight':
          return new UMSAddRight.fromJson(value);
        case 'UMSBoolRight':
          return new UMSBoolRight.fromJson(value);
        case 'UMSEmployeeRights':
          return new UMSEmployeeRights.fromJson(value);
        case 'UMSModifyAddRight':
          return new UMSModifyAddRight.fromJson(value);
        case 'UMSModifyRight':
          return new UMSModifyRight.fromJson(value);
        case 'UMSRole':
          return new UMSRole.fromJson(value);
        case 'UMSStringRight':
          return new UMSStringRight.fromJson(value);
        case 'UMSUserMangerRights':
          return new UMSUserMangerRights.fromJson(value);
        case 'UmsBudgetDetail':
          return new UmsBudgetDetail.fromJson(value);
        case 'UmsBudgetLineLimit':
          return new UmsBudgetLineLimit.fromJson(value);
        case 'UmsCustomerProductSelection':
          return new UmsCustomerProductSelection.fromJson(value);
        case 'UmsModelsAddress':
          return new UmsModelsAddress.fromJson(value);
        case 'UmsModelsAuthorizationSettings':
          return new UmsModelsAuthorizationSettings.fromJson(value);
        case 'UmsModelsAuthorizer':
          return new UmsModelsAuthorizer.fromJson(value);
        case 'UmsModelsBudgetUsage':
          return new UmsModelsBudgetUsage.fromJson(value);
        case 'UmsModelsCategory':
          return new UmsModelsCategory.fromJson(value);
        case 'UmsModelsCountry':
          return new UmsModelsCountry.fromJson(value);
        case 'UmsModelsEmployee':
          return new UmsModelsEmployee.fromJson(value);
        case 'UmsModelsProductSelection':
          return new UmsModelsProductSelection.fromJson(value);
        case 'UmsModelsProductSelectionCategoryBudgets':
          return new UmsModelsProductSelectionCategoryBudgets.fromJson(value);
        case 'UmsModelsProjectShippingAddress':
          return new UmsModelsProjectShippingAddress.fromJson(value);
        case 'UmsModelsProjectV17':
          return new UmsModelsProjectV17.fromJson(value);
        case 'UmsModelsShippingAddress':
          return new UmsModelsShippingAddress.fromJson(value);
        case 'UmsModelsShippingAddressV17':
          return new UmsModelsShippingAddressV17.fromJson(value);
        case 'UmsModelsUmsGroup':
          return new UmsModelsUmsGroup.fromJson(value);
        case 'UmsModelsUserSettings':
          return new UmsModelsUserSettings.fromJson(value);
        case 'UmsProject':
          return new UmsProject.fromJson(value);
        case 'Unit':
          return new Unit.fromJson(value);
        case 'V111BudgetOverview':
          return new V111BudgetOverview.fromJson(value);
        case 'V111CustomerEmployee':
          return new V111CustomerEmployee.fromJson(value);
        case 'V111CustomerEnhanced':
          return new V111CustomerEnhanced.fromJson(value);
        case 'V112ProductSizeRequest':
          return new V112ProductSizeRequest.fromJson(value);
        case 'V112WorkOrder':
          return new V112WorkOrder.fromJson(value);
        case 'V112WorkOrderDetail':
          return new V112WorkOrderDetail.fromJson(value);
        case 'V12ContactInformation':
          return new V12ContactInformation.fromJson(value);
        case 'V12Customer':
          return new V12Customer.fromJson(value);
        case 'V12CustomerEmployee':
          return new V12CustomerEmployee.fromJson(value);
        case 'V12CustomerGroup':
          return new V12CustomerGroup.fromJson(value);
        case 'V12DeliveryCondition':
          return new V12DeliveryCondition.fromJson(value);
        case 'V12Employee':
          return new V12Employee.fromJson(value);
        case 'V12Invoice':
          return new V12Invoice.fromJson(value);
        case 'V12LedgerJournalEntry':
          return new V12LedgerJournalEntry.fromJson(value);
        case 'V12OciCustomField':
          return new V12OciCustomField.fromJson(value);
        case 'V12Order':
          return new V12Order.fromJson(value);
        case 'V12OrderDetail':
          return new V12OrderDetail.fromJson(value);
        case 'V12Package':
          return new V12Package.fromJson(value);
        case 'V12PaymentCondition':
          return new V12PaymentCondition.fromJson(value);
        case 'V12ProductRelation':
          return new V12ProductRelation.fromJson(value);
        case 'V12Rayon':
          return new V12Rayon.fromJson(value);
        case 'V12RelatedProduct':
          return new V12RelatedProduct.fromJson(value);
        case 'V12Role':
          return new V12Role.fromJson(value);
        case 'V12SalesAccount':
          return new V12SalesAccount.fromJson(value);
        case 'V12SalesAccountResult':
          return new V12SalesAccountResult.fromJson(value);
        case 'V12SalesEmployee':
          return new V12SalesEmployee.fromJson(value);
        case 'V12Sector':
          return new V12Sector.fromJson(value);
        case 'V12ShippingAddress':
          return new V12ShippingAddress.fromJson(value);
        case 'V12ShippingAddressStatus':
          return new V12ShippingAddressStatus.fromJson(value);
        case 'V12Title':
          return new V12Title.fromJson(value);
        case 'V12Vat':
          return new V12Vat.fromJson(value);
        case 'V13BranchAvailabilityResult':
          return new V13BranchAvailabilityResult.fromJson(value);
        case 'V13CategoryRequest':
          return new V13CategoryRequest.fromJson(value);
        case 'V13ExternalId':
          return new V13ExternalId.fromJson(value);
        case 'V13ShopProduct':
          return new V13ShopProduct.fromJson(value);
        case 'V13ShopProductData':
          return new V13ShopProductData.fromJson(value);
        case 'V14Hotlist':
          return new V14Hotlist.fromJson(value);
        case 'V14PriceAndStock':
          return new V14PriceAndStock.fromJson(value);
        case 'V15Address':
          return new V15Address.fromJson(value);
        case 'V15Supplier':
          return new V15Supplier.fromJson(value);
        case 'V19Address':
          return new V19Address.fromJson(value);
        case 'V19Country':
          return new V19Country.fromJson(value);
        case 'V19Project':
          return new V19Project.fromJson(value);
        case 'V19ShippingAddress':
          return new V19ShippingAddress.fromJson(value);
        case 'Vat':
          return new Vat.fromJson(value);
        case 'WebUser':
          return new WebUser.fromJson(value);
        case 'WebshopOrder':
          return new WebshopOrder.fromJson(value);
        case 'WebshopProduct':
          return new WebshopProduct.fromJson(value);
        case 'WmsStatusInformation':
          return new WmsStatusInformation.fromJson(value);
        case 'WorkOrderClass':
          return new WorkOrderClass.fromJson(value);
        case 'WorkOrderDateRequest':
          return new WorkOrderDateRequest.fromJson(value);
        case 'WorkOrderDescriptionRequest':
          return new WorkOrderDescriptionRequest.fromJson(value);
        case 'WorkOrderDetailChangeRequest':
          return new WorkOrderDetailChangeRequest.fromJson(value);
        case 'WorkOrderDetailRequest':
          return new WorkOrderDetailRequest.fromJson(value);
        case 'WorkOrderHours':
          return new WorkOrderHours.fromJson(value);
        case 'WorkOrderProduct':
          return new WorkOrderProduct.fromJson(value);
        case 'WorkOrderRequest':
          return new WorkOrderRequest.fromJson(value);
        case 'WorkOrderSchedule':
          return new WorkOrderSchedule.fromJson(value);
        case 'WorkOrderScheduleRequest':
          return new WorkOrderScheduleRequest.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(
          500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(
        500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(
      String path,
      String method,
      Iterable<QueryParam> queryParams,
      Object body,
      Map<String, String> headerParams,
      Map<String, String> formParams,
      String contentType,
      List<String> authNames) async {
    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) =>
        '${Uri.encodeComponent(p.name)}=${Uri.encodeComponent(p.value)}');
    String queryString = ps.isNotEmpty ? '?' + ps.join('&') : '';

    Uri url = Uri.parse(basePath + path + queryString);

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if (body is MultipartRequest) {
      var request = new MultipartRequest(method, url);
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded"
          ? formParams
          : serialize(body);
      switch (method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames,
      List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null)
        throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
