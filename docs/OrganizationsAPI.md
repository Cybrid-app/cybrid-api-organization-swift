# OrganizationsAPI

All URIs are relative to *http://api-organization.cybrid.local*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getOrganization**](OrganizationsAPI.md#getorganization) | **GET** /api/organizations/{organization_guid} | Get organization
[**updateOrganization**](OrganizationsAPI.md#updateorganization) | **PATCH** /api/organizations/{organization_guid} | Patch organization


# **getOrganization**
```swift
    open class func getOrganization(organizationGuid: String, completion: @escaping (_ data: OrganizationOrganizationModel?, _ error: Error?) -> Void)
```

Get organization

Retrieve an organization.  Required scope: **organizations:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiOrganizationSwift

let organizationGuid = "organizationGuid_example" // String | Identifier for the organization.

// Get organization
OrganizationsAPI.getOrganization(organizationGuid: organizationGuid) { (response, error) in
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
 **organizationGuid** | **String** | Identifier for the organization. | 

### Return type

[**OrganizationOrganizationModel**](OrganizationOrganizationModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrganization**
```swift
    open class func updateOrganization(organizationGuid: String, patchOrganizationOrganizationModel: PatchOrganizationOrganizationModel, completion: @escaping (_ data: OrganizationOrganizationModel?, _ error: Error?) -> Void)
```

Patch organization

Update an organization.  Required scope: **organizations:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiOrganizationSwift

let organizationGuid = "organizationGuid_example" // String | Identifier for the organization.
let patchOrganizationOrganizationModel = PatchOrganization(name: "name_example") // PatchOrganizationOrganizationModel | 

// Patch organization
OrganizationsAPI.updateOrganization(organizationGuid: organizationGuid, patchOrganizationOrganizationModel: patchOrganizationOrganizationModel) { (response, error) in
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
 **organizationGuid** | **String** | Identifier for the organization. | 
 **patchOrganizationOrganizationModel** | [**PatchOrganizationOrganizationModel**](PatchOrganizationOrganizationModel.md) |  | 

### Return type

[**OrganizationOrganizationModel**](OrganizationOrganizationModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

