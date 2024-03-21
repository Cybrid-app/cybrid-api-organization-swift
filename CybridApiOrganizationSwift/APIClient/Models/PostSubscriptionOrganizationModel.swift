//
// PostSubscriptionOrganizationModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class PostSubscriptionOrganizationModel: NSObject, Codable, JSONEncodable {

    public enum TypeOrganizationModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case webhook = "webhook"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** Name provided for the subscription. */
    public var name: String
    /** The type of subscription. */
    public var type: TypeOrganizationModel
    /** The url for the subscription. */
    public var url: String
    /** The environment that the subscription is configured for; one of sandbox or production. */
    public var environment: String

    public init(name: String, type: TypeOrganizationModel, url: String, environment: String) {
        self.name = name
        self.type = type
        self.url = url
        self.environment = environment
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case type
        case url
        case environment
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(type, forKey: .type)
        try container.encode(url, forKey: .url)
        try container.encode(environment, forKey: .environment)
    }
}
