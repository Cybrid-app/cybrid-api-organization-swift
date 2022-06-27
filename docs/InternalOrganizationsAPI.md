# InternalOrganizationsAPI

All URIs are relative to *http://api-organization.cybrid.local*

Method | HTTP request | Description
------------- | ------------- | -------------
[**internalCreateOrganization**](InternalOrganizationsAPI.md#internalcreateorganization) | **POST** /api/internal/organizations | Create organization


# **internalCreateOrganization**
```swift
    open class func internalCreateOrganization(internalPostOrganizationOrganizationModel: InternalPostOrganizationOrganizationModel, completion: @escaping (_ data: OrganizationOrganizationModel?, _ error: Error?) -> Void)
```

Create organization

Create an organization.  Required scope: **internal:organizations:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiOrganizationSwift

let internalPostOrganizationOrganizationModel = InternalPostOrganization(name: "name_example") // InternalPostOrganizationOrganizationModel | 

// Create organization
InternalOrganizationsAPI.internalCreateOrganization(internalPostOrganizationOrganizationModel: internalPostOrganizationOrganizationModel) { (response, error) in
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
 **internalPostOrganizationOrganizationModel** | [**InternalPostOrganizationOrganizationModel**](InternalPostOrganizationOrganizationModel.md) |  | 

### Return type

[**OrganizationOrganizationModel**](OrganizationOrganizationModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

