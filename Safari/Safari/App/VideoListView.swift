//
//  VideoListView.swift
//  Safari
//
//  Created by Amir Pahadi on 3/20/21.
//

import SwiftUI

struct VideoListView: View {
    
    @State var videos: [Video] = Bundle.main.decode("videos.json") //decodes video array from "video.json"
//    haptic
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationView{
            List{
                ForEach(videos){video in
                    VideoListItemView(video: video)
                        .padding(.vertical,8)
                }//ForEach
            }//List
            .listStyle(InsetGroupedListStyle()) //adds gray background to the list view
            .navigationBarTitle("Vidoes", displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        videos.shuffle() //shuffles video
                        hapticImpact.impactOccurred()
                    }, label: {
                        Image(systemName: "arrow.2.squarepath")
                    })
                }
            }//toolbar
        }//Navigation view
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
