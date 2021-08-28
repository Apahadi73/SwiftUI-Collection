//
//  AnimalListItemView.swift
//  Safari
//
//  Created by Amir Pahadi on 3/20/21.
//

import SwiftUI

struct AnimalListItemView: View {
//      MARK - PROPERTIES
    let animal: Animal
    
//    MARK - BODY 
    var body: some View {
        HStack(alignment: .center, spacing: 16, content: {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment: .leading, spacing: 8, content: {
                Text(animal.name)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .padding(.trailing,8)
            })//VStack
        })//HStack
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalListItemView(animal:animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
