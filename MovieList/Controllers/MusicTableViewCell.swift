//
//  MusicTableViewCell.swift
//  MovieList
//
//  Created by sindija.dzintare on 05/09/2020.
//  Copyright © 2020 sindija.dzintare. All rights reserved.
//

import UIKit

class MusicTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var musicCover: UIImageView!
    @IBOutlet weak var musicArtist: UILabel!
    @IBOutlet weak var musicSong: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


