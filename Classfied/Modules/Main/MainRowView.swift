//
//  RowView.swift
//  Classfied
//
//  Created by Ali Omari on 7/28/22.
//

import SwiftUI
import Core

struct MainRowView: View {
    
    let advertisment: Advertisment
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            NetworkImage(url: URL(string: advertisment.imageUrls[0])!) {
                ProgressView()
            } image: { Image(uiImage: $0).resizable() }
            .frame(width: 100, height: 100, alignment: .center)
            .cornerRadius(10)
            VStack(alignment: .leading, spacing: 10){
                Text(advertisment.name)
                    .font(.headline)
                Text(advertisment.price)
                    .font(.callout)
                    .foregroundColor(.gray)
                Text(getFormattedDate(dateTime: advertisment.createdAt, format: "yyyy-MM-dd"))
                    .font(.footnote)
            }
            Spacer()
        }.padding()
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        MainRowView(advertisment: advertisments[0])
            .previewLayout(.sizeThatFits)
    }
}
