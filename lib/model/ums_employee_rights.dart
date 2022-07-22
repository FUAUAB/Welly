part of swagger.api;

class UMSEmployeeRights {
  UMSBoolRight canOrder = null;

  UMSBoolRight showWishlist = null;

  UMSBoolRight customerWishlist = null;

  UMSBoolRight showWarehouse = null;

  UMSBoolRight customerWarehouse = null;

  UMSBoolRight canDownload = null;

  UMSBoolRight showTender = null;

  UMSBoolRight showOrder = null;

  UMSBoolRight showDelivery = null;

  UMSBoolRight showInvoice = null;

  UMSBoolRight showDiscountProducts = null;

  UMSBoolRight canChangeShippingAddress = null;

  UMSBoolRight canChangePassword = null;

  UMSBoolRight onlyShowOwnData = null;

  UMSBoolRight allowPartialPayments = null;

  UMSBoolRight canRequestTender = null;

  UMSStringRight priceMode = null;

  UMSBoolRight onlyShowGrossPrice = null;

  UMSBoolRight customerOrdernumberRequired = null;

  UMSStringRight defaultCustomerOrdernumber = null;

  UMSBoolRight customerReferenceRequired = null;

  UMSStringRight defaultCustomerReference = null;

  UMSBoolRight showErpCustomerReferences = null;

  UMSBoolRight orderAttachmentRequired = null;

  UMSBoolRight showSearchCategory = null;

  UMSBoolRight useEmployeeAddressAsShippingAddress = null;

  UMSBoolRight manageEmployees = null;

  UMSEmployeeRights();

  @override
  String toString() {
    return 'UMSEmployeeRights[canOrder=$canOrder, showWishlist=$showWishlist, customerWishlist=$customerWishlist, showWarehouse=$showWarehouse, customerWarehouse=$customerWarehouse, canDownload=$canDownload, showTender=$showTender, showOrder=$showOrder, showDelivery=$showDelivery, showInvoice=$showInvoice, showDiscountProducts=$showDiscountProducts, canChangeShippingAddress=$canChangeShippingAddress, canChangePassword=$canChangePassword, onlyShowOwnData=$onlyShowOwnData, allowPartialPayments=$allowPartialPayments, canRequestTender=$canRequestTender, priceMode=$priceMode, onlyShowGrossPrice=$onlyShowGrossPrice, customerOrdernumberRequired=$customerOrdernumberRequired, defaultCustomerOrdernumber=$defaultCustomerOrdernumber, customerReferenceRequired=$customerReferenceRequired, defaultCustomerReference=$defaultCustomerReference, showErpCustomerReferences=$showErpCustomerReferences, orderAttachmentRequired=$orderAttachmentRequired, showSearchCategory=$showSearchCategory, useEmployeeAddressAsShippingAddress=$useEmployeeAddressAsShippingAddress, manageEmployees=$manageEmployees, ]';
  }

  UMSEmployeeRights.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    canOrder = new UMSBoolRight.fromJson(json['canOrder']);
    showWishlist = new UMSBoolRight.fromJson(json['showWishlist']);
    customerWishlist = new UMSBoolRight.fromJson(json['customerWishlist']);
    showWarehouse = new UMSBoolRight.fromJson(json['showWarehouse']);
    customerWarehouse = new UMSBoolRight.fromJson(json['customerWarehouse']);
    canDownload = new UMSBoolRight.fromJson(json['canDownload']);
    showTender = new UMSBoolRight.fromJson(json['showTender']);
    showOrder = new UMSBoolRight.fromJson(json['showOrder']);
    showDelivery = new UMSBoolRight.fromJson(json['showDelivery']);
    showInvoice = new UMSBoolRight.fromJson(json['showInvoice']);
    showDiscountProducts =
        new UMSBoolRight.fromJson(json['showDiscountProducts']);
    canChangeShippingAddress =
        new UMSBoolRight.fromJson(json['canChangeShippingAddress']);
    canChangePassword = new UMSBoolRight.fromJson(json['canChangePassword']);
    onlyShowOwnData = new UMSBoolRight.fromJson(json['onlyShowOwnData']);
    allowPartialPayments =
        new UMSBoolRight.fromJson(json['allowPartialPayments']);
    canRequestTender = new UMSBoolRight.fromJson(json['canRequestTender']);
    priceMode = new UMSStringRight.fromJson(json['priceMode']);
    onlyShowGrossPrice = new UMSBoolRight.fromJson(json['onlyShowGrossPrice']);
    customerOrdernumberRequired =
        new UMSBoolRight.fromJson(json['customerOrdernumberRequired']);
    defaultCustomerOrdernumber =
        new UMSStringRight.fromJson(json['defaultCustomerOrdernumber']);
    customerReferenceRequired =
        new UMSBoolRight.fromJson(json['customerReferenceRequired']);
    defaultCustomerReference =
        new UMSStringRight.fromJson(json['defaultCustomerReference']);
    showErpCustomerReferences =
        new UMSBoolRight.fromJson(json['showErpCustomerReferences']);
    orderAttachmentRequired =
        new UMSBoolRight.fromJson(json['orderAttachmentRequired']);
    showSearchCategory = new UMSBoolRight.fromJson(json['showSearchCategory']);
    useEmployeeAddressAsShippingAddress =
        new UMSBoolRight.fromJson(json['useEmployeeAddressAsShippingAddress']);
    manageEmployees = new UMSBoolRight.fromJson(json['manageEmployees']);
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
      'showDiscountProducts': showDiscountProducts,
      'canChangeShippingAddress': canChangeShippingAddress,
      'canChangePassword': canChangePassword,
      'onlyShowOwnData': onlyShowOwnData,
      'allowPartialPayments': allowPartialPayments,
      'canRequestTender': canRequestTender,
      'priceMode': priceMode,
      'onlyShowGrossPrice': onlyShowGrossPrice,
      'customerOrdernumberRequired': customerOrdernumberRequired,
      'defaultCustomerOrdernumber': defaultCustomerOrdernumber,
      'customerReferenceRequired': customerReferenceRequired,
      'defaultCustomerReference': defaultCustomerReference,
      'showErpCustomerReferences': showErpCustomerReferences,
      'orderAttachmentRequired': orderAttachmentRequired,
      'showSearchCategory': showSearchCategory,
      'useEmployeeAddressAsShippingAddress':
          useEmployeeAddressAsShippingAddress,
      'manageEmployees': manageEmployees
    };
  }

  static List<UMSEmployeeRights> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UMSEmployeeRights>()
        : json.map((value) => new UMSEmployeeRights.fromJson(value)).toList();
  }

  static Map<String, UMSEmployeeRights> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UMSEmployeeRights>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UMSEmployeeRights.fromJson(value));
    }
    return map;
  }
}
