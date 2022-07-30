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
    @State var isLoading = true
    
    var body: some View {
        NavigationView {
            ZStack {
                List(viewModel.ads) { classfiedAd in
                    NavigationLink {
                        DetailsView(advertisment: classfiedAd)
                    } label: {
                        MainRowView(advertisment: classfiedAd)
                    }
                }.onAppear {
                    self.viewModel.fetchClassifiedAds()
                }.onReceive(viewModel.$ads) { ads in
                    isLoading = ads.isEmpty
                }
                if isLoading {
                    ProgressView("Please wait")
                }
            }
            .navigationTitle("Advertisments")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
