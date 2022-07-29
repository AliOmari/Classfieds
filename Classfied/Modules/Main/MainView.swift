//
//  MainView.swift
//  Classfied
//
//  Created by Ali Omari on 7/28/22.
//

import SwiftUI
import Core

struct MainView: View {
    
    @ObservedObject private var viewModel = MainViewModel()
    
    var body: some View {
        
        List(viewModel.ads) {
            MainRowView(advertisment: $0)
        }.onAppear {
            self.viewModel.fetchClassifiedAds()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
