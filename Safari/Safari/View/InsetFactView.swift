//
//  InsetFactView.swift
//  Safari
//
//  Created by Amir Pahadi on 3/20/21.
//

import SwiftUI

struct InsetFactView: View {
//    MARK - PROPERTIES
    let animal:Animal
    
//    MARK -BODIES
    var body: some View {
        GroupBox{
            TabView{
                ForEach(animal.fact, id:\.self) { fact in
                    Text(fact)
                }
            }//Tabview
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight:148,idealHeight: 168, maxHeight: 180)
        }
        .padding()
    }
}

struct InsetFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
