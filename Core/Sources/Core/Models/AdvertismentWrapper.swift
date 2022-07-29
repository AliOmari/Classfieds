//
//  AdvertismentWrapper.swift
//  
//
//  Created by Ali Omari on 29/07/2022.
//

import Foundation

public struct AdvertismentWrapper: Codable {
    
    public let results: [Advertisment]
    public let pagination: Pagination
    
    public init(results: [Advertisment]) {
        self.results = results
        self.pagination = Pagination(key: nil)
    }
}
