//
// InternalOrganizationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc open class InternalOrganizationsAPI : NSObject {

    /**
     Create organization
     
     - parameter internalPostOrganizationOrganizationModel: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func internalCreateOrganization(internalPostOrganizationOrganizationModel: InternalPostOrganizationOrganizationModel, apiResponseQueue: DispatchQueue = CybridApiOrganizationSwiftAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<OrganizationOrganizationModel, ErrorResponse>) -> Void)) -> RequestTask {
        return internalCreateOrganizationWithRequestBuilder(internalPostOrganizationOrganizationModel: internalPostOrganizationOrganizationModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Create organization
     - POST /api/internal/organizations
     - Create an organization.  Required scope: **internal:organizations:execute**
     - BASIC:
       - type: http
       - name: BearerAuth
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter internalPostOrganizationOrganizationModel: (body)  
     - returns: RequestBuilder<OrganizationOrganizationModel> 
     */
    open class func internalCreateOrganizationWithRequestBuilder(internalPostOrganizationOrganizationModel: InternalPostOrganizationOrganizationModel) -> RequestBuilder<OrganizationOrganizationModel> {
        let localVariablePath = "/api/internal/organizations"
        let localVariableURLString = CybridApiOrganizationSwiftAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: internalPostOrganizationOrganizationModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<OrganizationOrganizationModel>.Type = CybridApiOrganizationSwiftAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
