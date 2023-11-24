//
// OrganizationOrganizationModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class OrganizationOrganizationModel: NSObject, Codable, JSONEncodable {

    /** Auto-generated unique identifier for the organization. */
    public var guid: String
    /** Name provided for the organization. */
    public var name: String
    /** ISO8601 datetime the record was created at. */
    public var createdAt: Date
    /** ISO8601 datetime the record was last updated at. */
    public var updatedAt: Date?

    public init(guid: String, name: String, createdAt: Date, updatedAt: Date? = nil) {
        self.guid = guid
        self.name = name
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case name
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(guid, forKey: .guid)
        try container.encode(name, forKey: .name)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
    }
}

