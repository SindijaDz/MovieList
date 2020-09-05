//
//  MusicViewController.swift
//  MovieList
//
//  Created by sindija.dzintare on 05/09/2020.
//  Copyright © 2020 sindija.dzintare. All rights reserved.
//

import UIKit

class MusicViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var music = Music.createMusic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        
    }
    @IBAction func editButtonTapped(_ sender: UIBarButtonItem) {
        tableView.isEditing = !tableView.isEditing
    }
    
    
    func configureCell(cell: MusicTableViewCell, for indexPath: IndexPath) {
        let musicS = music[indexPath.row]
        
        cell.musicArtist.text = musicS.artist
        cell.musicSong.text = musicS.song
        cell.musicCover.image = UIImage(named: musicS.cover)
        
    }
}

extension MusicViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return music.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "musicListCell", for: indexPath) as? MusicTableViewCell else {
            return UITableViewCell()
        }
        
        configureCell(cell: cell, for: indexPath)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            let alert = UIAlertController(title: "Are you sure you want to delete?", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            alert.addAction(UIAlertAction(title: "Delete", style: .default, handler: { (_) in
                self.music.remove(at: indexPath.row)
                UIView.transition(with: tableView, duration: 1.0, options: .transitionCrossDissolve, animations: {
                    self.tableView.reloadData()
                }, completion: nil)
                }))
            self.present(alert, animated: true)
        }
    }
    
    
  //  func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     //   let currentMusic = music.remove(at: sourceIndexPath.row)
   //     music.insert(currentMusic, at: destinationIndexPath.row)
   // }
    
    
    
    
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
     func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let currentMusic = music.remove(at: fromIndexPath.row)
        music.insert(currentMusic, at: to.row)
    }
}

