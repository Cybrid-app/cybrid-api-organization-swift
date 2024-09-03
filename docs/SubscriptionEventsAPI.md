# SubscriptionEventsAPI

All URIs are relative to *https://organization.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSubscriptionEvent**](SubscriptionEventsAPI.md#getsubscriptionevent) | **GET** /api/subscription_events/{subscription_event_guid} | Get Subscription Event 
[**listSubscriptionEvents**](SubscriptionEventsAPI.md#listsubscriptionevents) | **GET** /api/subscription_events | Get subscription events list


# **getSubscriptionEvent**
```swift
    open class func getSubscriptionEvent(subscriptionEventGuid: String, completion: @escaping (_ data: SubscriptionEvent?, _ error: Error?) -> Void)
```

Get Subscription Event 

Retrieves a Subscription Event.  Required scope: **subscription_events:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiOrganizationSwift

let subscriptionEventGuid = "subscriptionEventGuid_example" // String | Identifier for the Subscription Event.

// Get Subscription Event 
SubscriptionEventsAPI.getSubscriptionEvent(subscriptionEventGuid: subscriptionEventGuid) { (response, error) in
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
 **subscriptionEventGuid** | **String** | Identifier for the Subscription Event. | 

### Return type

[**SubscriptionEvent**](SubscriptionEvent.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSubscriptionEvents**
```swift
    open class func listSubscriptionEvents(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, completion: @escaping (_ data: SubscriptionEventList?, _ error: Error?) -> Void)
```

Get subscription events list

Retrieves a listing of subscription events s.  Required scope: **subscription_events:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiOrganizationSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)
let guid = "guid_example" // String | Comma separated subscription_event_guids to list subscription events for. (optional)

// Get subscription events list
SubscriptionEventsAPI.listSubscriptionEvents(page: page, perPage: perPage, guid: guid) { (response, error) in
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
 **guid** | **String** | Comma separated subscription_event_guids to list subscription events for. | [optional] 

### Return type

[**SubscriptionEventList**](SubscriptionEventList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

