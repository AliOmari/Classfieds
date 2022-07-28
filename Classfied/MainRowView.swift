//
//  RowView.swift
//  Classfied
//
//  Created by Ali Omari on 7/28/22.
//

import SwiftUI

struct MainRowView: View {
    
    let advertisment: Advertisment
    
    var body: some View {
        HStack {
            NetworkImage(imageURL: URL(string: advertisment.imageUrls[0]))
                .frame(width: 50, height: 50, alignment: .center)
            Spacer()
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        MainRowView(advertisment: Holder.ad)
            .previewLayout(.sizeThatFits)
            .frame(width: 250.0, height: 50.0)
    }
}
