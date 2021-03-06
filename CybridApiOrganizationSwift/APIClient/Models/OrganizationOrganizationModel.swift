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
    /** ISO8601 datetime the organization was created at. */
    public var createdAt: Date

    public init(guid: String, name: String, createdAt: Date) {
        self.guid = guid
        self.name = name
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case name
        case createdAt = "created_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(guid, forKey: .guid)
        try container.encode(name, forKey: .name)
        try container.encode(createdAt, forKey: .createdAt)
    }
}

