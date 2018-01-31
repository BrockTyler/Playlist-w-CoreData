//
//  SongController.swift
//  Playlist
//
//  Created by James Pacheco on 5/4/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation
import CoreData

class SongController {
    
	// CRUD
    
    static func createSong(name: String, artist: String, playlist: Playlist) {
        let _ = Song(name: name, artist: artist, playlist: playlist)
        PlaylistController.saveToPersistentStore()
        
    }
    
    static func deleteSong(song: Song) {
        song.managedObjectContext?.delete(song)
        PlaylistController.saveToPersistentStore()
    }
}
