//
//  Advertisment.swift
//  Classfied
//
//  Created by Ali Omari on 7/28/22.
//

import Foundation

struct Advertisment: Identifiable, Codable {
    
    let id: UUID = UUID()
    let createdAt: String
    let price: String
    let name: String
    let uid: String
    let imageIds: [String]
    let imageUrls: [String]
    let imageThumnailUrls: [String]
    
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

class Holder {
    
static let ad: Advertisment = Advertisment(createdAt: "2019-02-23 11:11:01.282260",
                                           price: "AED 45",
                                           name: "name",
                                           uid: "uid",
                                           imageIds: ["c96e82f913034c27b291a1722613f162"],
                                           imageUrls: ["https://demo-app-photos-45687895456123.s3.amazonaws.com/c96e82f913034c27b291a1722613f162?AWSAccessKeyId=ASIASV3YI6A436FTC2S3&Signature=rUTHLQalMD2VP0wA8AIu%2FXvdaTk%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEKT%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDqaGZml9y4K32fkAmKUylMHudpqI8vVarvuOG5G8AVvgIhAJIDNr3OM%2BMDPhLOo2QJ%2BBThYfGUHq2%2BSpQCUhTSy6QhKvsCCO3%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAxoMMTg0Mzk4OTY2ODQxIgy2s7u0sUz11j%2BXqcQqzwLv2Vd1%2Fug4Yy4t95MdvtPHFZupys1NoaWG5fz9MuBYUKLFg%2FYIcRJoJR8yb6lEDrgBDupvDNmX1r01ti31UJqFNgAnVQgw1C0L%2BGm8yyANfijEDdiwSa9TDxWHXQbZ%2FuMELRzR1eEoU59n4wgS3dUt12K%2FiVFUW9i5pT6wcKYKmJrnprj5R5%2BgVeefiHRx%2BgSinlkLDgMKQWaZ6%2F%2FBxC7p3bLKZGiCxwl%2BB%2BiXQaLkYdNctaD%2F9O1LyYUIhxHarEV%2B4DMG3f70%2Bqj5Kpln2D%2Fio7c%2BS8prt%2FPoPfHn%2BH03fN8%2FT8p%2BtI%2FJXYz8SRlbtKNwvDFyPDI%2F6DBFDvLp%2FlIf6RiIm5KYATs99JBcAECo%2F5%2BVJXKY8mE5FnsaQZ%2BEBMWJEwNPr1dQzL0LRXbbVgtDidr%2BGfZWNxU0v2mWhoNDG5H0hknh2A6BEqwCucDgKTCl8omXBjqdASlepjN2nWjpJ1PLuo4ZrDaURgWVOWaN23wZ9FJP5bgjzPl%2FTlrLW9un73Sl0zeyGAhd1s0xUJZKydMlmRK4Ps4YP7epgVe5EhCthQnEJzWsb%2Fh1M2Xy4Lib8MmpRFy9tT2lmIFaFXetZNpUHAw5B8gYeEH%2Bskrx7N0ulPg%2F4j4Bs0mFpqgFOso0ILh%2FAL1ckcQhFe7Y1grCAcyULdw%3D&Expires=1659012924"],
                                           imageThumnailUrls: ["https://demo-app-photos-45687895456123.s3.amazonaws.com/c96e82f913034c27b291a1722613f162-thumbnail?AWSAccessKeyId=ASIASV3YI6A436FTC2S3&Signature=aNJS0z8IbfG7I0Vd6lE8ZbwDPxI%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEKT%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDqaGZml9y4K32fkAmKUylMHudpqI8vVarvuOG5G8AVvgIhAJIDNr3OM%2BMDPhLOo2QJ%2BBThYfGUHq2%2BSpQCUhTSy6QhKvsCCO3%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAxoMMTg0Mzk4OTY2ODQxIgy2s7u0sUz11j%2BXqcQqzwLv2Vd1%2Fug4Yy4t95MdvtPHFZupys1NoaWG5fz9MuBYUKLFg%2FYIcRJoJR8yb6lEDrgBDupvDNmX1r01ti31UJqFNgAnVQgw1C0L%2BGm8yyANfijEDdiwSa9TDxWHXQbZ%2FuMELRzR1eEoU59n4wgS3dUt12K%2FiVFUW9i5pT6wcKYKmJrnprj5R5%2BgVeefiHRx%2BgSinlkLDgMKQWaZ6%2F%2FBxC7p3bLKZGiCxwl%2BB%2BiXQaLkYdNctaD%2F9O1LyYUIhxHarEV%2B4DMG3f70%2Bqj5Kpln2D%2Fio7c%2BS8prt%2FPoPfHn%2BH03fN8%2FT8p%2BtI%2FJXYz8SRlbtKNwvDFyPDI%2F6DBFDvLp%2FlIf6RiIm5KYATs99JBcAECo%2F5%2BVJXKY8mE5FnsaQZ%2BEBMWJEwNPr1dQzL0LRXbbVgtDidr%2BGfZWNxU0v2mWhoNDG5H0hknh2A6BEqwCucDgKTCl8omXBjqdASlepjN2nWjpJ1PLuo4ZrDaURgWVOWaN23wZ9FJP5bgjzPl%2FTlrLW9un73Sl0zeyGAhd1s0xUJZKydMlmRK4Ps4YP7epgVe5EhCthQnEJzWsb%2Fh1M2Xy4Lib8MmpRFy9tT2lmIFaFXetZNpUHAw5B8gYeEH%2Bskrx7N0ulPg%2F4j4Bs0mFpqgFOso0ILh%2FAL1ckcQhFe7Y1grCAcyULdw%3D&Expires=1659012924"])
}
