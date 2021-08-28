//
//  ExternalWebLinkView.swift
//  Safari
//
//  Created by Amir Pahadi on 3/20/21.
//

import SwiftUI

struct ExternalWebLinkView: View {
//    MARK - PROPERTIES
    let animal: Animal
    
//    MARK - BODY
    var body: some View {
        GroupBox{
            HStack{
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group{
                    Image(systemName: "arrow.up.right.square")
//                    takes to animal wikipedia page or if failed, takes to the home page
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string:"https://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }
        }
        .padding()
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWebLinkView(animal:animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
