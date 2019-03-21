//
//  AppStoreItem.swift
//  AppleSearchInClass
//
//  Created by shelby gold on 3/21/19.
//  Copyright © 2019 shelby gold. All rights reserved.
//

import Foundation

struct AppStoreItem {
    let name: String
    let description: String
    let imageURL: String?
    
    enum ItemType: String {
        case app = "software"
        case song = "musicTrack"
        
    }
    init?(itemType: AppStoreItem.ItemType,dictionary: [String:Any]) {
        if itemType == .song {
            guard let name = dictionary["trackName"] as? String,
                let description = dictionary["artistName"] as? String,
                let imageURL = dictionary["artworkUrl100"] as? String else {return nil}
            
            self.name = name
            self.description = description
            self.imageURL = imageURL
        } else if itemType == .app {
            guard let name = dictionary["trackName"] as? String,
                let description = dictionary["description"] as? String,
                let imageURL = dictionary["artworkUrl100"] as? String else {return nil}
            
            self.name = name
            self.description = description
            self.imageURL = imageURL
        } else {
            print("sorry forgot")
            return nil
        }
    }
}
