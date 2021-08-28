
//
//  GalleryView.swift
//  Safari
//
//  Created by Amir Pahadi on 3/20/21.
//

import SwiftUI

struct InsetGalleryView: View {
//    MARK - PROPERTIES
    let animal: Animal
    
//    MARK - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack(alignment:.center, spacing:15,content: {
                ForEach(animal.gallery,id:\.self) { animalImage in
                    Image(animalImage)
                        .resizable()
                        .scaledToFit()
                        .frame(height:200)
                        .cornerRadius(12)
                }
            })//HStack
            .padding()
        })//Scroll
        
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
