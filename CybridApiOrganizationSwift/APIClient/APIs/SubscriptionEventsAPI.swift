//
// SubscriptionEventsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc open class SubscriptionEventsAPI : NSObject {

    /**
     Get Subscription Event 
     
     - parameter subscriptionEventGuid: (path) Identifier for the Subscription Event. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func getSubscriptionEvent(subscriptionEventGuid: String, apiResponseQueue: DispatchQueue = CybridApiOrganizationSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<SubscriptionEventOrganizationModel, ErrorResponse>) -> Void)) -> RequestTask {
        return getSubscriptionEventWithRequestBuilder(subscriptionEventGuid: subscriptionEventGuid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get Subscription Event 
     - GET /api/subscription_events/{subscription_event_guid}
     - Retrieves a Subscription Event.  Required scope: **subscription_events:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter subscriptionEventGuid: (path) Identifier for the Subscription Event. 
     - returns: RequestBuilder<SubscriptionEventOrganizationModel> 
     */
    open class func getSubscriptionEventWithRequestBuilder(subscriptionEventGuid: String) -> RequestBuilder<SubscriptionEventOrganizationModel> {
        var localVariablePath = "/api/subscription_events/{subscription_event_guid}"
        let subscriptionEventGuidPreEscape = "\(APIHelper.mapValueToPathItem(subscriptionEventGuid))"
        let subscriptionEventGuidPostEscape = subscriptionEventGuidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{subscription_event_guid}", with: subscriptionEventGuidPostEscape, options: .literal, range: nil)
        let localVariableURLString = CybridApiOrganizationSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionEventOrganizationModel>.Type = CybridApiOrganizationSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get subscription events list
     
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter guid: (query) Comma separated subscription_event_guids to list subscription events for. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func listSubscriptionEvents(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, apiResponseQueue: DispatchQueue = CybridApiOrganizationSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<SubscriptionEventListOrganizationModel, ErrorResponse>) -> Void)) -> RequestTask {
        return listSubscriptionEventsWithRequestBuilder(page: page, perPage: perPage, guid: guid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get subscription events list
     - GET /api/subscription_events
     - Retrieves a listing of subscription events s.  Required scope: **subscription_events:read**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter page: (query) The page index to retrieve. (optional)
     - parameter perPage: (query) The number of entities per page to return. (optional)
     - parameter guid: (query) Comma separated subscription_event_guids to list subscription events for. (optional)
     - returns: RequestBuilder<SubscriptionEventListOrganizationModel> 
     */
    open class func listSubscriptionEventsWithRequestBuilder(page: Int? = nil, perPage: Int? = nil, guid: String? = nil) -> RequestBuilder<SubscriptionEventListOrganizationModel> {
        let localVariablePath = "/api/subscription_events"
        let localVariableURLString = CybridApiOrganizationSwiftAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "per_page": perPage?.encodeToJSON(),
            "guid": guid?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SubscriptionEventListOrganizationModel>.Type = CybridApiOrganizationSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
