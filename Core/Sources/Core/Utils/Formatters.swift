//
//  Formatters.swift
//  
//
//  Created by Ali Omari on 29/07/2022.
//

import Foundation

public func getFormattedDate(dateTime: String, format: String) -> String {
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSS"
    let date = dateFormatter.date(from: dateTime)!
    dateFormatter.dateFormat = format
    return dateFormatter.string(from: date)
}
