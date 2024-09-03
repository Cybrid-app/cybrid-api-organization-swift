# SubscriptionDelivery

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guid** | **String** | Auto-generated unique identifier for the subscription delivery. | 
**response** | **String** | The response of the subscription delivery. | [optional] 
**subscriptionEventGuid** | **String** | The subscription event guid of the subscription delivery. | 
**subscriptionGuid** | **String** | The subscription guid of the subscription delivery. | 
**state** | **String** | The state of the subscription delivery. | 
**nextAttemptAt** | **Date** | ISO8601 datetime the next attempt will be made. | [optional] 
**attemptCount** | **Int** | The number of attempts made to deliver the event. | 
**completedAt** | **Date** | ISO8601 datetime the event was delivered. | [optional] 
**failedAt** | **Date** | ISO8601 datetime the event delivery was marked as failed. | [optional] 
**createdAt** | **Date** | ISO8601 datetime the record was created at. | [optional] 
**updatedAt** | **Date** | ISO8601 datetime the record was last updated at. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


