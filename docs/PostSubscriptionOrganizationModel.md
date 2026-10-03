# PostSubscriptionOrganizationModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**environment** | **String** | The environment that the subscription is configured for. | 
**type** | **String** | Type of the subscription. | 
**name** | **String** | Name provided for the subscription. | 
**eventTypes** | **[String]** | Event types delivered to the subscription, within those its channel supports; omitted or null means no narrowing. | [optional] 
**url** | **String** | URL provided for the subscription. Required when type is webhook. | [optional] 
**recipient** | **String** | Recipient email address. Required when type is email. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


