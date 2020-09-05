//
//  Movie.swift
//  MovieList
//
//  Created by sindija.dzintare on 02/09/2020.
//  Copyright © 2020 sindija.dzintare. All rights reserved.
//

import Foundation


 struct Movie {
     
     let title: String
     let year: String
     let poster: String
     
     static func createMovie() -> [Movie]{
         var movies: [Movie] = []
         
         let titles = MovieDataManager.shared.title
         let years = MovieDataManager.shared.year
         let posters = MovieDataManager.shared.poster
         
         for index in 0..<titles.count {
             let movie = Movie(title: titles[index], year: years[index], poster: posters[index])
             movies.append(movie)
             
         }
         
         return movies
     }
 }
 
