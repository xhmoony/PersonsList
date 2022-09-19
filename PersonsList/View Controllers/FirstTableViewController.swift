//
//  FirstTableViewController.swift
//  PersonsList
//
//  Created by Владимир Х. on 17.09.2022.
//

import UIKit

class FirstTableViewController: UITableViewController {

    var persons: [Person] = []
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
        
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let userInfoVC = segue.destination as! UserViewController
            userInfoVC.person = persons[indexPath.row]
        }
    }

}
