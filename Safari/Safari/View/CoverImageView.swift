//
//  CoverImageView.swift
//  Safari
//
//  Created by Amir Pahadi on 3/20/21.
//

import SwiftUI

struct CoverImageView: View {
//    MARK - PROPERTIES
//    following decode function is an extension to the Bundle
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
//    MARK - BODY
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFit()
            }//loop
        }// Tabview
        .tabViewStyle(PageTabViewStyle())
    }
}

//MARK - PREVIEW
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
