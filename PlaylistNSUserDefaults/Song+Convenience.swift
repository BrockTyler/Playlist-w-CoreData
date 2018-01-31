//
//  Song.swift
//  PlaylistNSUserDefaults
//
//  Created by brock tyler on 1/31/18.
//  Copyright © 2018 DevMountain. All rights reserved.
//

import Foundation
import CoreData

extension Song {
    
    convenience init(name: String, artist: String, playlist: Playlist, context: NSManagedObjectContext = CoreDataStack.context) {
        
        self.init(context: context)
        self.playlist = playlist
        self.name = name
        self.artist = artist
    }
}



