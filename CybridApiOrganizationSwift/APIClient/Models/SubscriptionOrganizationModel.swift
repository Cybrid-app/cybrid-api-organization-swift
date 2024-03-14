//
// SubscriptionOrganizationModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class SubscriptionOrganizationModel: NSObject, Codable, JSONEncodable {

    public enum TypeOrganizationModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case webhook = "webhook"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** Auto-generated unique identifier for the subscription. */
    public var guid: String
    /** Name provided for the subscription. */
    public var name: String
    /** The type of subscription. */
    public var type: TypeOrganizationModel
    /** The url for the subscription. */
    public var url: String
    /** The environment that the subscription is configured for; one of sandbox or production. */
    public var environment: String
    /** The state of the subscription; one of storing, completed, failed, deleting, or deleted. */
    public var state: String
    /** The failure code of a subscription (if any) */
    public var failureCode: String?
    /** ISO8601 datetime the record was created at. */
    public var createdAt: Date?
    /** ISO8601 datetime the record was last updated at. */
    public var updatedAt: Date?

    public init(guid: String, name: String, type: TypeOrganizationModel, url: String, environment: String, state: String, failureCode: String? = nil, createdAt: Date? = nil, updatedAt: Date? = nil) {
        self.guid = guid
        self.name = name
        self.type = type
        self.url = url
        self.environment = environment
        self.state = state
        self.failureCode = failureCode
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case name
        case type
        case url
        case environment
        case state
        case failureCode = "failure_code"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(guid, forKey: .guid)
        try container.encode(name, forKey: .name)
        try container.encode(type, forKey: .type)
        try container.encode(url, forKey: .url)
        try container.encode(environment, forKey: .environment)
        try container.encode(state, forKey: .state)
        try container.encodeIfPresent(failureCode, forKey: .failureCode)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
    }
}

