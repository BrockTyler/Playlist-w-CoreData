//
//  PlaylistController.swift
//  Playlist
//
//  Created by James Pacheco on 5/4/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation
import CoreData

class PlaylistController {
    
    // MARK: Properties
    
    var playlists: [Playlist] {
        let request: NSFetchRequest<Playlist> = Playlist.fetchRequest()
        return (try? CoreDataStack.context.fetch(request)) ?? []
    }
    
    static let shared = PlaylistController()
    
    
    // MARK: CRUD Functions
    
    func createPlaylist(name: String) {
        let _ = Playlist(name: name)
        PlaylistController.saveToPersistentStore()
    }
    
    func deletePlaylist(playlist: Playlist) {
        playlist.managedObjectContext?.delete(playlist)
        PlaylistController.saveToPersistentStore()
    }
	
	// MARK: Persistence
	
    static func saveToPersistentStore() {
        do {
            try CoreDataStack.context.save()
        } catch {
            print("Error: \(error.localizedDescription)")
        }
    }
}
