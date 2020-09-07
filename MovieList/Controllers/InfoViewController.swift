//
//  InfoViewController.swift
//  MovieList
//
//  Created by sindija.dzintare on 07/09/2020.
//  Copyright © 2020 sindija.dzintare. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var aboutMoviesLabel: UILabel!
    @IBOutlet weak var aboutMusicLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutMoviesLabel.text = "In this application you will find top 10 most popular movies based on their IMDB rating"
        aboutMusicLabel.text = "In this application you will find top 10 songs from year 2019"

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
