//
//  MovieListTableViewController.swift
//  MovieList
//
//  Created by sindija.dzintare on 02/09/2020.
//  Copyright © 2020 sindija.dzintare. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController {
    
    @IBOutlet var tableViewer: UITableView!
    
     var movies = Movie.createMovie()
     

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
         self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return movies.count
//    }
    
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieListCell", for: indexPath)

        // Configure the cell...
        let movie = movies[indexPath.row]
        cell.textLabel?.text = movie.title
        cell.detailTextLabel?.text = movie.year
        cell.imageView?.image = UIImage(named: movie.poster)

        return cell
    }

     //MARK: - TABLE VIEW DELEGATE
     
     override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         80
     }

    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
         let currentTitle = movies.remove(at: fromIndexPath.row)
         movies.insert(currentTitle, at: to.row)
         tableView.reloadData()
     }
     
    
    

    // Override to support conditional rearranging of the table view.

     override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
         return.none
     }
     
     
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
         // Return false if you do not want the item to be re-orderable.
         return true
     }
    
    */
    

    // MARK: - Navigation


    // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
             if let indexPath = tableView.indexPathForSelectedRow {
                 // Get the new view controller using segue.destination.
                 // Pass the selected object to the new view controller.
                 print(indexPath.row)
                 let detailVC = segue.destination as! DetailViewController
                 detailVC.movie = movies[indexPath.row]
             }
         }
  
    
    
    
    // From Lesson 17 on 04.09.2020
//    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
//        let currentMovie = movies.remove(at: sourceIndexPath.row)
//        movies.insert(currentMovie, at: destinationIndexPath.row)
//    }
   /*
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            let alert = UIAlertController(title: "Are you sure you want to delete this movie?", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            
            alert.addAction(UIAlertAction(title: "Delete", style: .default, handler: {(_) in self.movies.remove(at: indexPath.row)
            UIView.transition(with: tableView, duration: 1.0, options: .transitionCrossDissolve, animations: {
                self.tableViewer.reloadData()
                }, completion: nil)
            }))
            self.present(alert, animated: true)
            }
   // }
//}*/

// From Slack:
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
    return .delete
}
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
    return true
}
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
    let currentMovie = movies.remove(at: fromIndexPath.row)
    movies.insert(currentMovie, at: to.row)
}
}
//}
