//
//  Playlist.swift
//  PlaylistNSUserDefaults
//
//  Created by brock tyler on 1/31/18.
//  Copyright © 2018 DevMountain. All rights reserved.
//

import Foundation
import CoreData

extension Playlist {
    
    convenience init(name: String, context: NSManagedObjectContext = CoreDataStack.context) {
        
        self.init(context: context)
        self.name = name
    }
}

let newPlaylist = Playlist(name: "new playlist")

