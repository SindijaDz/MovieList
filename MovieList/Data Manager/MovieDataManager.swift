//
//  MovieDataManager.swift
//  MovieList
//
//  Created by sindija.dzintare on 02/09/2020.
//  Copyright © 2020 sindija.dzintare. All rights reserved.
//

import Foundation


class MovieDataManager {
    static let shared = MovieDataManager()
    
    //track = title
    var title = [
        "The Shawshank Redemption",
        "The Godfather",
        "The Dark Knight",
        "Inception",
        "Hamilton",
        "Interstellar",
        "Parasite",
        "Joker",
        "The Prestige",
        "Avengers Endgame"
    ]
    
    //album = year
    var year = [
        "(1994)",
        "(1972)",
        "(2008)",
        "(2010)",
        "(2020)",
        "(2014)",
        "(2019)",
        "(2019)",
        "(2006)",
        "(2019)"
    ]
    
    //cover = poster
    var poster = [
        
        "The Shawshank Redemption (1994)",
        "The Godfather (1972)",
        "The Dark Knight (2008)",
        "Inception (2010)",
        "Hamilton (2020)",
        "Interstellar (2014)",
        "Parasite (2019)",
        "Joker (2019)",
        "The Prestige (2006)",
        "Avengers Endgame (2019) "
    ]
    
}
