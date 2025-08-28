//
//  EmojiTableViewController.swift
//  Classwork_TableView
//
//  Created by Student on 18/08/25.
//

//
//  EmojiTableViewController.swift
//  L31_TableViewRevision
//
//  Created by Arpit Garg on 21/08/25.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Editing Mode Button
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell                    = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath)
        
        var config                  = cell.defaultContentConfiguration()
        
        config.text                 = "\(emojis[indexPath.row].symbol) \(emojis[indexPath.row].name)"
        config.secondaryText        = "\(emojis[indexPath.row].description)"
        
        cell.contentConfiguration  = config
        
        return cell
    }
    
    // Editing Mode
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Update the array itself
            emojis.remove(at: indexPath.row) // returns the removed element
            
            tableView.deleteRows(at: [indexPath], with: .fade) // Only removes from the table view not the array itself.
            
        } else if editingStyle == .insert {
            // Handle insertion if needed
        }
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete // you can implement logic in this function to have different editing mode for different  index paths
    }
    
    // Reordering of Table View
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let removedEmote = emojis.remove(at: sourceIndexPath.row) // Remove the item from the original position
        
        emojis.insert(removedEmote, at: destinationIndexPath.row) // Insert it at the new position
    }
}
