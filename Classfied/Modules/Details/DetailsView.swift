//
//  DetailsView.swift
//  Classfied
//
//  Created by Ali Omari on 29/07/2022.
//

import SwiftUI
import Core

struct DetailsView: View {
    
    let advertisment: Advertisment
    
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                LazyHGrid(rows: [GridItem(.fixed(UIScreen.main.bounds.width))]) {
                    ForEach(advertisment.imageUrls, id: \.self) { value in
                        NetworkImage(url: URL(string: value)!) {
                            ProgressView()
                        } image: { Image(uiImage: $0).resizable() }
                        .frame(width: UIScreen.main.bounds.width,
                                height: UIScreen.main.bounds.height/2)
                    }
                }.frame(height: UIScreen.main.bounds.height/2)
            }.ignoresSafeArea()
            HStack(spacing: 10){
                Text(advertisment.name)
                    .font(.largeTitle)
                Spacer()
                VStack(alignment: .trailing, spacing: 5) {
                    Text(advertisment.price)
                        .font(.callout)
                        .foregroundColor(.gray)
                    Text(getFormattedDate(dateTime: advertisment.createdAt, format: "yyyy-MM-dd"))
                        .font(.footnote)
                }
            }.padding([.horizontal], 10)
            Spacer()
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(advertisment: advertisments[5])
    }
}
