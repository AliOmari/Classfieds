//
//  ClassfiedApp.swift
//  Classfied
//
//  Created by Ali Omari on 7/28/22.
//

import SwiftUI

@main
struct ClassfiedApp: App {
    
    var body: some Scene {
        WindowGroup {
            MainView(advertisments: (0...100).map { _ in Holder.ad })
        }
    }
}
