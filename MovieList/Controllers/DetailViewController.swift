//
//  DetailViewController.swift
//  MovieList
//
//  Created by sindija.dzintare on 02/09/2020.
//  Copyright © 2020 sindija.dzintare. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieYearLabel: UILabel!
    
         
         //var movieName: String!
         var movie: Movie!
         
         override func viewDidLoad() {
             super.viewDidLoad()

             if movie != nil {
                 movieImageView.image = UIImage(named: movie.poster)
                 movieTitleLabel.text = movie.title
                 movieTitleLabel.numberOfLines = 0
         movieYearLabel.text = movie.year
         movieYearLabel.numberOfLines = 0
             }

        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
