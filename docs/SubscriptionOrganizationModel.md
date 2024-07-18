# SubscriptionOrganizationModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guid** | **String** | Auto-generated unique identifier for the subscription. | 
**name** | **String** | Name provided for the subscription. | 
**type** | **String** | The type of subscription. | 
**url** | **String** | The url for the subscription. | 
**environment** | **String** | The environment that the subscription is configured for; one of sandbox or production. | 
**state** | **String** | The state of the subscription; one of storing, completed, or failed. | 
**failureCode** | **String** | The failure code of a subscription (if any) | [optional] 
**createdAt** | **Date** | ISO8601 datetime the record was created at. | [optional] 
**updatedAt** | **Date** | ISO8601 datetime the record was last updated at. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


