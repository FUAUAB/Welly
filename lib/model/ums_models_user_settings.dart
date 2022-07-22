part of swagger.api;

class UmsModelsUserSettings {
  /* User can place orders. */
  bool canOrder = null;

/* Show wishlist for this user. */
  bool showWishlist = null;

/* User has access to wishlist of parent company. */
  bool customerWishlist = null;

/* User can use customer warehouse. */
  bool showWarehouse = null;

/* User has access to parent warehouse. */
  bool customerWarehouse = null;

/* User is allowed to download. */
  bool canDownload = null;

/* User can retrieve tender information. */
  bool showTender = null;

/* User can retrieve order information. */
  bool showOrder = null;

/* User can retrieve delivery information. */
  bool showDelivery = null;

/* User can retrieve invoices. */
  bool showInvoice = null;

/* User is allowed to change the setting for showing products with a special price. */
  bool canChangeShowDiscountProducts = null;

/* Show products with a special price for this user. */
  bool showDiscountProducts = null;

/* User is allowed to change shipping address. */
  bool canChangeCanChangeShippingAddress = null;

/* User is allowed to change shipping address for order. */
  bool canChangeShippingAddress = null;

/* User is allowed to change its password. */
  bool canChangePassword = null;

/* Only show user's own data. */
  bool onlyShowOwnData = null;

/* User can place orders with partial payment. */
  bool allowPartialPayments = null;

/* User can request tenders. */
  bool canRequestTender = null;

/* Display of prices for this user (\"W\" = show prices, \"N\" = don't show prices,  \"B\" = display of prices is limited). */
  String priceMode = null;

/* Show only gross prices for this user. */
  bool onlyShowGrossPrice = null;

/* User is allowed to change the setting of requirement of customer order number. */
  bool canChangeCustomerOrdernumberRequired = null;

/* Customer order number is required for orders for this user. */
  bool customerOrdernumberRequired = null;

/* User default customer order number for this user. */
  String defaultCustomerOrdernumber = null;

/* User is allowed to change setting of requirement of reference. */
  bool canChangeCustomerReferenceRequired = null;

  bool customerReferenceRequired = null;

/* Use default customer reference for this user. */
  String defaultCustomerReference = null;

/* Show ERP references for this user. */
  bool showErpCustomerReferences = null;

/* Show search categories for this user. */
  bool showSearchCategory = null;

/* User's address should be used as shipping address. */
  bool useEmployeeAddressAsShippingAddress = null;

/* User's name should be included in shipping address. */
  bool useEmployeeNameInShippingAddress = null;

/* User can manage data of other employees. */
  bool manageEmployees = null;

/* UMS Role ID, as retrievable from <a href=\"?deepLinking=true#/UmsAuthorizer/RolesForCustomer\">/api/UmsAuthorizer</a>. */
  int umsRole = null;

/* User is obliged to add an attachment to the order. */
  bool orderAttachmentRequired = null;

/* User is allowed to add/edit projects. */
  bool canAddChangeProjects = null;

/* User is obliged to manually enter address in store. */
  bool manualAddressEntryMandatory = null;

  UmsModelsUserSettings();

  @override
  String toString() {
    return 'UmsModelsUserSettings[canOrder=$canOrder, showWishlist=$showWishlist, customerWishlist=$customerWishlist, showWarehouse=$showWarehouse, customerWarehouse=$customerWarehouse, canDownload=$canDownload, showTender=$showTender, showOrder=$showOrder, showDelivery=$showDelivery, showInvoice=$showInvoice, canChangeShowDiscountProducts=$canChangeShowDiscountProducts, showDiscountProducts=$showDiscountProducts, canChangeCanChangeShippingAddress=$canChangeCanChangeShippingAddress, canChangeShippingAddress=$canChangeShippingAddress, canChangePassword=$canChangePassword, onlyShowOwnData=$onlyShowOwnData, allowPartialPayments=$allowPartialPayments, canRequestTender=$canRequestTender, priceMode=$priceMode, onlyShowGrossPrice=$onlyShowGrossPrice, canChangeCustomerOrdernumberRequired=$canChangeCustomerOrdernumberRequired, customerOrdernumberRequired=$customerOrdernumberRequired, defaultCustomerOrdernumber=$defaultCustomerOrdernumber, canChangeCustomerReferenceRequired=$canChangeCustomerReferenceRequired, customerReferenceRequired=$customerReferenceRequired, defaultCustomerReference=$defaultCustomerReference, showErpCustomerReferences=$showErpCustomerReferences, showSearchCategory=$showSearchCategory, useEmployeeAddressAsShippingAddress=$useEmployeeAddressAsShippingAddress, useEmployeeNameInShippingAddress=$useEmployeeNameInShippingAddress, manageEmployees=$manageEmployees, umsRole=$umsRole, orderAttachmentRequired=$orderAttachmentRequired, canAddChangeProjects=$canAddChangeProjects, manualAddressEntryMandatory=$manualAddressEntryMandatory, ]';
  }

  UmsModelsUserSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    canOrder = json['canOrder'];
    showWishlist = json['showWishlist'];
    customerWishlist = json['customerWishlist'];
    showWarehouse = json['showWarehouse'];
    customerWarehouse = json['customerWarehouse'];
    canDownload = json['canDownload'];
    showTender = json['showTender'];
    showOrder = json['showOrder'];
    showDelivery = json['showDelivery'];
    showInvoice = json['showInvoice'];
    canChangeShowDiscountProducts = json['canChangeShowDiscountProducts'];
    showDiscountProducts = json['showDiscountProducts'];
    canChangeCanChangeShippingAddress =
        json['canChangeCanChangeShippingAddress'];
    canChangeShippingAddress = json['canChangeShippingAddress'];
    canChangePassword = json['canChangePassword'];
    onlyShowOwnData = json['onlyShowOwnData'];
    allowPartialPayments = json['allowPartialPayments'];
    canRequestTender = json['canRequestTender'];
    priceMode = json['priceMode'];
    onlyShowGrossPrice = json['onlyShowGrossPrice'];
    canChangeCustomerOrdernumberRequired =
        json['canChangeCustomerOrdernumberRequired'];
    customerOrdernumberRequired = json['customerOrdernumberRequired'];
    defaultCustomerOrdernumber = json['defaultCustomerOrdernumber'];
    canChangeCustomerReferenceRequired =
        json['canChangeCustomerReferenceRequired'];
    customerReferenceRequired = json['customerReferenceRequired'];
    defaultCustomerReference = json['defaultCustomerReference'];
    showErpCustomerReferences = json['showErpCustomerReferences'];
    showSearchCategory = json['showSearchCategory'];
    useEmployeeAddressAsShippingAddress =
        json['useEmployeeAddressAsShippingAddress'];
    useEmployeeNameInShippingAddress = json['useEmployeeNameInShippingAddress'];
    manageEmployees = json['manageEmployees'];
    umsRole = json['umsRole'];
    orderAttachmentRequired = json['orderAttachmentRequired'];
    canAddChangeProjects = json['canAddChangeProjects'];
    manualAddressEntryMandatory = json['manualAddressEntryMandatory'];
  }

  Map<String, dynamic> toJson() {
    return {
      'canOrder': canOrder,
      'showWishlist': showWishlist,
      'customerWishlist': customerWishlist,
      'showWarehouse': showWarehouse,
      'customerWarehouse': customerWarehouse,
      'canDownload': canDownload,
      'showTender': showTender,
      'showOrder': showOrder,
      'showDelivery': showDelivery,
      'showInvoice': showInvoice,
      'canChangeShowDiscountProducts': canChangeShowDiscountProducts,
      'showDiscountProducts': showDiscountProducts,
      'canChangeCanChangeShippingAddress': canChangeCanChangeShippingAddress,
      'canChangeShippingAddress': canChangeShippingAddress,
      'canChangePassword': canChangePassword,
      'onlyShowOwnData': onlyShowOwnData,
      'allowPartialPayments': allowPartialPayments,
      'canRequestTender': canRequestTender,
      'priceMode': priceMode,
      'onlyShowGrossPrice': onlyShowGrossPrice,
      'canChangeCustomerOrdernumberRequired':
          canChangeCustomerOrdernumberRequired,
      'customerOrdernumberRequired': customerOrdernumberRequired,
      'defaultCustomerOrdernumber': defaultCustomerOrdernumber,
      'canChangeCustomerReferenceRequired': canChangeCustomerReferenceRequired,
      'customerReferenceRequired': customerReferenceRequired,
      'defaultCustomerReference': defaultCustomerReference,
      'showErpCustomerReferences': showErpCustomerReferences,
      'showSearchCategory': showSearchCategory,
      'useEmployeeAddressAsShippingAddress':
          useEmployeeAddressAsShippingAddress,
      'useEmployeeNameInShippingAddress': useEmployeeNameInShippingAddress,
      'manageEmployees': manageEmployees,
      'umsRole': umsRole,
      'orderAttachmentRequired': orderAttachmentRequired,
      'canAddChangeProjects': canAddChangeProjects,
      'manualAddressEntryMandatory': manualAddressEntryMandatory
    };
  }

  static List<UmsModelsUserSettings> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UmsModelsUserSettings>()
        : json
            .map((value) => new UmsModelsUserSettings.fromJson(value))
            .toList();
  }

  static Map<String, UmsModelsUserSettings> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UmsModelsUserSettings>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UmsModelsUserSettings.fromJson(value));
    }
    return map;
  }
}
