//
//  Music.swift
//  MovieList
//
//  Created by sindija.dzintare on 05/09/2020.
//  Copyright © 2020 sindija.dzintare. All rights reserved.
//

import Foundation

struct Music {
    
    let artist: String
    let song: String
    let cover: String
    
    static func createMusic() -> [Music]{
        var musicS: [Music] = []
        
        let artists = MusicDataManager.shared.artist
        let songs = MusicDataManager.shared.song
        let covers = MusicDataManager.shared.cover
        
        for index in 0..<artists.count {
            let song = Music(artist: artists[index], song: songs[index], cover: covers[index])
            musicS.append(song)
            
        }
        
        return musicS
    }
}


