# SubscriptionDeliveriesAPI

All URIs are relative to *https://organization.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSubscriptionDelivery**](SubscriptionDeliveriesAPI.md#createsubscriptiondelivery) | **POST** /api/subscription_deliveries/ | Create SubscriptionDelivery
[**getSubscriptionDelivery**](SubscriptionDeliveriesAPI.md#getsubscriptiondelivery) | **GET** /api/subscription_deliveries/{subscription_delivery_guid} | Get Subscription Delivery 
[**listSubscriptionDeliveries**](SubscriptionDeliveriesAPI.md#listsubscriptiondeliveries) | **GET** /api/subscription_deliveries | Get subscription deliveries list


# **createSubscriptionDelivery**
```swift
    open class func createSubscriptionDelivery(postSubscriptionDeliveryOrganizationModel: PostSubscriptionDeliveryOrganizationModel, completion: @escaping (_ data: SubscriptionDeliveryOrganizationModel?, _ error: Error?) -> Void)
```

Create SubscriptionDelivery

Creates a SubscriptionDelivery.  ## Subscription Delivery  Create a SubscriptionDelivery to retry the delivery of a SubscriptionEvent to a Subscription.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the SubscriptionDelivery details in our private store | | completed | The Platform has successfully delivered the SubscriptionEvent to specified Subscription | | failing | The Platform is failing to deliver the SubscriptionDelivery,  a new attempt will be made (see `next_attempt_at`) | | failed | The Platform has failed to deliver the SubscriptionDelivery, no more attempts will be made |    Required scope: **subscription_events:execute

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiOrganizationSwift

let postSubscriptionDeliveryOrganizationModel = PostSubscriptionDelivery(subscriptionEventGuid: "subscriptionEventGuid_example", subscriptionGuid: "subscriptionGuid_example") // PostSubscriptionDeliveryOrganizationModel | 

// Create SubscriptionDelivery
SubscriptionDeliveriesAPI.createSubscriptionDelivery(postSubscriptionDeliveryOrganizationModel: postSubscriptionDeliveryOrganizationModel) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postSubscriptionDeliveryOrganizationModel** | [**PostSubscriptionDeliveryOrganizationModel**](PostSubscriptionDeliveryOrganizationModel.md) |  | 

### Return type

[**SubscriptionDeliveryOrganizationModel**](SubscriptionDeliveryOrganizationModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscriptionDelivery**
```swift
    open class func getSubscriptionDelivery(subscriptionDeliveryGuid: String, completion: @escaping (_ data: SubscriptionDeliveryOrganizationModel?, _ error: Error?) -> Void)
```

Get Subscription Delivery 

Retrieves a subscription delivery.  Required scope: **subscription_events:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiOrganizationSwift

let subscriptionDeliveryGuid = "subscriptionDeliveryGuid_example" // String | Identifier for the subscription delivery.

// Get Subscription Delivery 
SubscriptionDeliveriesAPI.getSubscriptionDelivery(subscriptionDeliveryGuid: subscriptionDeliveryGuid) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionDeliveryGuid** | **String** | Identifier for the subscription delivery. | 

### Return type

[**SubscriptionDeliveryOrganizationModel**](SubscriptionDeliveryOrganizationModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSubscriptionDeliveries**
```swift
    open class func listSubscriptionDeliveries(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, subscriptionEventGuid: String? = nil, subscriptionGuid: String? = nil, completion: @escaping (_ data: SubscriptionDeliveryListOrganizationModel?, _ error: Error?) -> Void)
```

Get subscription deliveries list

Retrieves a listing of subscription deliveries s.  Required scope: **subscription_events:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiOrganizationSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)
let guid = "guid_example" // String | Comma separated subscription_delivery_guids to list subscription deliveries for. (optional)
let subscriptionEventGuid = "subscriptionEventGuid_example" // String | Comma separated subscription_event_guids to list subscription deliveries for. (optional)
let subscriptionGuid = "subscriptionGuid_example" // String | Comma separated subscription_guids to list subscription deliveries for. (optional)

// Get subscription deliveries list
SubscriptionDeliveriesAPI.listSubscriptionDeliveries(page: page, perPage: perPage, guid: guid, subscriptionEventGuid: subscriptionEventGuid, subscriptionGuid: subscriptionGuid) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int** | The page index to retrieve. | [optional] 
 **perPage** | **Int** | The number of entities per page to return. | [optional] 
 **guid** | **String** | Comma separated subscription_delivery_guids to list subscription deliveries for. | [optional] 
 **subscriptionEventGuid** | **String** | Comma separated subscription_event_guids to list subscription deliveries for. | [optional] 
 **subscriptionGuid** | **String** | Comma separated subscription_guids to list subscription deliveries for. | [optional] 

### Return type

[**SubscriptionDeliveryListOrganizationModel**](SubscriptionDeliveryListOrganizationModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

