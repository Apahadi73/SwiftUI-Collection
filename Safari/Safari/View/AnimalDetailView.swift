//
//  AnimalDetailView.swift
//  Safari
//
//  Created by Amir Pahadi on 3/20/21.
//

import SwiftUI

struct AnimalDetailView: View {
//    MARK PROPERTIES
    let animal: Animal
    
//MARK BODIES
    var body: some View {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
            VStack(alignment: .center, spacing: 20, content: {
//                HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
//                TITLE
                Text(animal.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical,8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height:6)
                            .offset(y:24)
                    )
                
//                HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding()
                
//                GALLERY
                Group {
                    HeadingView(headingImage: "photo", headingText: "Wilderness in the Pictures")
                    InsetGalleryView(animal: animal)
                }
                
//                FACTS
                Group{
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    InsetFactView(animal: animal)
                }
                
//                DESCRIPTION
                
                Group{
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                        .padding()
                }
                
//                MAP
                Group{
                    HeadingView(headingImage: "map", headingText: "National Parks")
                    InsetMapView()
                }
                
//                LINK
                Group{
                    HeadingView(headingImage: "books.vertical", headingText: "Learn more")
                    ExternalWebLinkView(animal: animal)
                }
                
            })
            .navigationBarTitle("Learn about \(animal.name)",displayMode: .inline)//vstack
        })//Scrollview
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView{
        AnimalDetailView(animal:animals[1])
            .padding()
            .previewDevice("iPhone 11 Pro Max")
            
        }
    }
}
