//
//  VideoModel.swift
//  Safari
//
//  Created by Amir Pahadi on 3/20/21.
//

import Foundation

struct Video: Identifiable, Codable {
    let id: String
    let name: String
    let headline: String
    
//    computed properties
    var thumbnail: String {
        "video-\(id)"
    }
}
