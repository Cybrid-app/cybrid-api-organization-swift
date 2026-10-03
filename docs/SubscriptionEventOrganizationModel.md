# SubscriptionEventOrganizationModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**guid** | **String** | Auto-generated unique identifier for the subscription event. | 
**bankGuid** | **String** | The bank guid for which the event is received. | [optional] 
**eventType** | **String** | The type of the subscription event. One of trade.storing, trade.pending, trade.executed, trade.cancelled, trade.completed, trade.settling, trade.failed, transfer.storing, transfer.pending, transfer.holding, transfer.reviewing, transfer.cancelling, transfer.completed, transfer.failed, identity_verification.storing, identity_verification.pending, identity_verification.reviewing, identity_verification.waiting, identity_verification.expired, identity_verification.completed, plan.storing, plan.planning, plan.completed, plan.failed, execution.storing, execution.executing, execution.completed, execution.failed, account.minimums.funding_pull.below_minimum, account.minimums.funding_pull.near_minimum, external_bank_account.storing, external_bank_account.pending, external_bank_account.reviewing, external_bank_account.completed, external_bank_account.failed, external_bank_account.expired, external_bank_account.refresh_required, external_bank_account.unverified, external_bank_account.deleting, external_bank_account.deleted, external_wallet.storing, external_wallet.pending, external_wallet.reviewing, external_wallet.completed, external_wallet.failed, external_wallet.deleting, external_wallet.deleted, subscription.storing, subscription.completed, subscription.failed, subscription.deleting, or subscription.deleted. | 
**objectGuid** | **String** | The object guid for which the event is received. | 
**environment** | **String** | The environment that the subscription event is configured for; one of sandbox or production. | 
**organizationGuid** | **String** | The organization guid of the subscription event. | 
**createdAt** | **Date** | ISO8601 datetime the record was created at. | 
**updatedAt** | **Date** | ISO8601 datetime the record was last updated at. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


