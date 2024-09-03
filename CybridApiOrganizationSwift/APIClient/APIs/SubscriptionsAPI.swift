//
// SubscriptionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc open class SubscriptionsAPI : NSObject {

    /**
     Create Subscription
     
     - parameter postSubscription: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func createSubscription(postSubscription: PostSubscription, apiResponseQueue: DispatchQueue = CybridApiOrganizationSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Subscription, ErrorResponse>) -> Void)) -> RequestTask {
        return createSubscriptionWithRequestBuilder(postSubscription: postSubscription).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Create Subscription
     - POST /api/subscriptions/
     - Creates a Subscription.  ## Subscription creation  Subscriptions can be created for webhook endpoints.  ## State  | State | Description | |-------|-------------| | storing | The Platform is storing the subscription details in our private store | | completed | The Platform has created the subscription | | failed | The Platform was not able to successfully create the subscription |    Required scope: **subscriptions:execute
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter postSubscription: (body)  
     - returns: RequestBuilder<Subscription> 
     */
    open class func createSubscriptionWithRequestBuilder(postSubscription: PostSubscription) -> RequestBuilder<Subscription> {
        let localVariablePath = "/api/subscriptions/"
        let localVariableURLString = CybridApiOrganizationSwiftAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postSubscription)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Subscription>.Type = CybridApiOrganizationSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Delete Subscription
     
     - parameter subscriptionGuid: (path) Identifier for the subscription. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func deleteSubscription(subscriptionGuid: String, apiResponseQueue: DispatchQueue = CybridApiOrganizationSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, ErrorResponse>) -> Void)) -> RequestTask {
        return deleteSubscriptionWithRequestBuilder(subscriptionGuid: subscriptionGuid).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Delete Subscription
     - DELETE /api/subscriptions/{subscription_guid}
     - Deletes a subscription.  Required scope: **subscriptions:execute**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter subscriptionGuid: (path) Identifier for the subscription. 
     - returns: RequestBuilder<Void> 
     */
    open class func deleteSubscriptionWithRequestBuilder(subscriptionGuid: String) -> RequestBuilder<Void> {
        var localVariablePath = "/api/subscriptions/{subscription_guid}"
        let subscriptionGuidPreEscape = "\(APIHelper.mapValueToPathItem(subscriptionGuid))"
        let subscriptionGuidPostEscape = subscriptionGuidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{subscription_guid}", with: subscriptionGuidPostEscape, options: .literal, range: nil)
        let localVariableURLString = CybridApiOrganizationSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = CybridApiOrganizationSwiftAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Subscription 
     
     - parameter subscriptionGuid: (path) Identifier for the subscription. 
     - parameter includeSigningKey: (query) Flag to include signing key in the response. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func getSubscription(subscriptionGuid: String, includeSigningKey: Bool? = nil, apiResponseQueue: DispatchQueue = CybridApiOrganizationSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Subscription, ErrorResponse>) -> Void)) -> RequestTask {
        return getSubscriptionWithRequestBuilder(subscriptionGuid: subscriptionGuid, includeSigningKey: includeSigningKey).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get Subscription 
     - GET /api/subscriptions/{subscription_guid}
     - Retrieves a subscription.  Required scope: **subscriptions:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter subscriptionGuid: (path) Identifier for the subscription. 
     - parameter includeSigningKey: (query) Flag to include signing key in the response. (optional)
     - returns: RequestBuilder<Subscription> 
     */
    open class func getSubscriptionWithRequestBuilder(subscriptionGuid: String, includeSigningKey: Bool? = nil) -> RequestBuilder<Subscription> {
        var localVariablePath = "/api/subscriptions/{subscription_guid}"
        let subscriptionGuidPreEscape = "\(APIHelper.mapValueToPathItem(subscriptionGuid))"
        let subscriptionGuidPostEscape = subscriptionGuidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{subscription_guid}", with: subscriptionGuidPostEscape, options: .literal, range: nil)
        let localVariableURLString = CybridApiOrganizationSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "include_signing_key": includeSigningKey?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Subscription>.Type = CybridApiOrganizationSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get subscriptions list
     
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter guid: (query) Comma separated subscription_guids to list subscriptions for. (optional)
     - parameter includeSigningKey: (query) Flag to include signing key in the response. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func listSubscriptions(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, includeSigningKey: Bool? = nil, apiResponseQueue: DispatchQueue = CybridApiOrganizationSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<SubscriptionList, ErrorResponse>) -> Void)) -> RequestTask {
        return listSubscriptionsWithRequestBuilder(page: page, perPage: perPage, guid: guid, includeSigningKey: includeSigningKey).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get subscriptions list
     - GET /api/subscriptions
     - Retrieves a listing of subscriptions.  Required scope: **subscriptions:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter guid: (query) Comma separated subscription_guids to list subscriptions for. (optional)
     - parameter includeSigningKey: (query) Flag to include signing key in the response. (optional)
     - returns: RequestBuilder<SubscriptionList> 
     */
    open class func listSubscriptionsWithRequestBuilder(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, includeSigningKey: Bool? = nil) -> RequestBuilder<SubscriptionList> {
        let localVariablePath = "/api/subscriptions"
        let localVariableURLString = CybridApiOrganizationSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "per_page": perPage?.encodeToJSON(),
            "guid": guid?.encodeToJSON(),
            "include_signing_key": includeSigningKey?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionList>.Type = CybridApiOrganizationSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
