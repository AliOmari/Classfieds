//
//  MainViewModel.swift
//  Classfied
//
//  Created by Ali Omari on 29/07/2022.
//

import Foundation
import Combine
import Core

class MainViewModel: ObservableObject {
    
    private let url = "https://ey3f2y0nre.execute-api.us-east-1.amazonaws.com/default/dynamodb-writer"
    private var task: AnyCancellable?
    
    @Published var ads: [Advertisment] = []
    private var adsWrapper: AdvertismentWrapper? {
        didSet {
            ads.append(contentsOf: adsWrapper?.results ?? [])
        }
    }
    
    func fetchClassifiedAds() {
        guard let url = URL(string: url) else { return }
        task = URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: AdvertismentWrapper.self, decoder: JSONDecoder())
            .replaceError(with: AdvertismentWrapper(results: advertisments))
            .eraseToAnyPublisher()
            .receive(on: DispatchQueue.main)
            .sink { adsWrapper in self.adsWrapper = adsWrapper }
    }
}
