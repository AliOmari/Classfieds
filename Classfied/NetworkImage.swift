//
//  NetworkImage.swift
//  Classfied
//
//  Created by Ali Omari on 7/28/22.
//

import SwiftUI

struct NetworkImage: View {
    
    let imageURL: URL?
    
    var body: some View {
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
    }
}

struct NetworkImage_Previews: PreviewProvider {
    static var previews: some View {
        NetworkImage(imageURL: URL(string: "https://source.unsplash.com/user/c_v_r/1900x800"))
            .previewLayout(.sizeThatFits)
    }
}
