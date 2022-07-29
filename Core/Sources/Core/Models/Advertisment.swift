//
//  Advertisment.swift
//  Classfied
//
//  Created by Ali Omari on 7/28/22.
//

import Foundation

public struct Advertisment: Codable {
    
    public let createdAt: String
    public let price: String
    public let name: String
    public let uid: String
    public let imageIds: [String]
    public let imageUrls: [String]
    public let imageThumnailUrls: [String]
    
    private enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case price
        case name
        case uid
        case imageIds = "image_ids"
        case imageUrls = "image_urls"
        case imageThumnailUrls = "image_urls_thumbnails"
    }
}
