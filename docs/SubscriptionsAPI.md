# SubscriptionsAPI

All URIs are relative to *https://organization.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSubscription**](SubscriptionsAPI.md#createsubscription) | **POST** /api/subscriptions/ | Create Subscription
[**deleteSubscription**](SubscriptionsAPI.md#deletesubscription) | **DELETE** /api/subscriptions/{subscription_guid} | Delete Subscription
[**getSubscription**](SubscriptionsAPI.md#getsubscription) | **GET** /api/subscriptions/{subscription_guid} | Get Subscription 
[**listSubscriptions**](SubscriptionsAPI.md#listsubscriptions) | **GET** /api/subscriptions | Get subscriptions list


# **createSubscription**
```swift
    open class func createSubscription(postSubscriptionOrganizationModel: PostSubscriptionOrganizationModel, completion: @escaping (_ data: SubscriptionOrganizationModel?, _ error: Error?) -> Void)
```

Create Subscription

Creates a Subscription.  ## Subscription creation  Subscriptions can be created for webhook endpoints.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the subscription details in our private store | | completed | The Platform has created the subscription | | failed | The Platform was not able to successfully create the subscription |    Required scope: **subscriptions:execute

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiOrganizationSwift

let postSubscriptionOrganizationModel = PostSubscription(environment: "environment_example", type: "type_example", name: "name_example", url: "url_example") // PostSubscriptionOrganizationModel | 

// Create Subscription
SubscriptionsAPI.createSubscription(postSubscriptionOrganizationModel: postSubscriptionOrganizationModel) { (response, error) in
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
 **postSubscriptionOrganizationModel** | [**PostSubscriptionOrganizationModel**](PostSubscriptionOrganizationModel.md) |  | 

### Return type

[**SubscriptionOrganizationModel**](SubscriptionOrganizationModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSubscription**
```swift
    open class func deleteSubscription(subscriptionGuid: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete Subscription

Deletes a subscription.  Required scope: **subscriptions:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiOrganizationSwift

let subscriptionGuid = "subscriptionGuid_example" // String | Identifier for the subscription.

// Delete Subscription
SubscriptionsAPI.deleteSubscription(subscriptionGuid: subscriptionGuid) { (response, error) in
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
 **subscriptionGuid** | **String** | Identifier for the subscription. | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscription**
```swift
    open class func getSubscription(subscriptionGuid: String, includeSigningKey: Bool? = nil, completion: @escaping (_ data: SubscriptionOrganizationModel?, _ error: Error?) -> Void)
```

Get Subscription 

Retrieves a subscription.  Required scope: **subscriptions:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiOrganizationSwift

let subscriptionGuid = "subscriptionGuid_example" // String | Identifier for the subscription.
let includeSigningKey = true // Bool | Flag to include signing key in the response. (optional)

// Get Subscription 
SubscriptionsAPI.getSubscription(subscriptionGuid: subscriptionGuid, includeSigningKey: includeSigningKey) { (response, error) in
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
 **subscriptionGuid** | **String** | Identifier for the subscription. | 
 **includeSigningKey** | **Bool** | Flag to include signing key in the response. | [optional] 

### Return type

[**SubscriptionOrganizationModel**](SubscriptionOrganizationModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSubscriptions**
```swift
    open class func listSubscriptions(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, includeSigningKey: Bool? = nil, completion: @escaping (_ data: SubscriptionListOrganizationModel?, _ error: Error?) -> Void)
```

Get subscriptions list

Retrieves a listing of subscriptions.  Required scope: **subscriptions:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiOrganizationSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)
let guid = "guid_example" // String | Comma separated subscription_guids to list subscriptions for. (optional)
let includeSigningKey = true // Bool | Flag to include signing key in the response. (optional)

// Get subscriptions list
SubscriptionsAPI.listSubscriptions(page: page, perPage: perPage, guid: guid, includeSigningKey: includeSigningKey) { (response, error) in
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
 **guid** | **String** | Comma separated subscription_guids to list subscriptions for. | [optional] 
 **includeSigningKey** | **Bool** | Flag to include signing key in the response. | [optional] 

### Return type

[**SubscriptionListOrganizationModel**](SubscriptionListOrganizationModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

