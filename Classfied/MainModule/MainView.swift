//
//  MainView.swift
//  Classfied
//
//  Created by Ali Omari on 7/28/22.
//

import SwiftUI

struct MainView: View {
    let advertisments: [Advertisment]
    
    var body: some View {
        List(advertisments) {
            MainRowView(advertisment: $0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(advertisments: (0...100).map { _ in Holder.ad })
    }
}
