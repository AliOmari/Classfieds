//
//  NetworkImage.swift
//  Classfied
//
//  Created by Ali Omari on 7/28/22.
//

import SwiftUI

@available(iOS 15.0.0, *)
public struct NetworkImage: View {
    
    public let imageURL: URL?
    
    public init(imageURL: URL?) {
        self.imageURL = imageURL
    }
    
    public var body: some View {
        VStack {
            AsyncImage(url: imageURL) { phase in
                switch phase {
                case .success(let image):
                    image.resizable()
                case .empty:
                    ProgressView()
                case .failure(_):
                    Color.red
                @unknown default:
                    Color.red
                }
            }
        }.cornerRadius(10)
    }
}

@available(iOS 15.0.0, *)
struct NetworkImage_Previews: PreviewProvider {
    static var previews: some View {
        NetworkImage(imageURL: URL(string: "https://source.unsplash.com/user/c_v_r/1900x800"))
            .previewLayout(.sizeThatFits)
    }
}
