//
//  UsersTVC.swift
//  DIANA210319TVD
//
//  Created by Universidad Politecnica de Gómez Palacio on 21/03/19.
//  Copyright © 2019 UPGOP. All rights reserved.
//

import UIKit

class UsersTVC: UITableViewController
{
    let usernames: [String] = ["Alondra", "Diana", "Beatriz", "Leidy"]

    override func viewDidLoad()
    {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        // #warning Incomplete implementation, return the number of rows
        return self.usernames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell: UserTVCell = tableView.dequeueReusableCell(withIdentifier: "userTVCell", for: indexPath) as! UserTVCell
        
        
        // Configure the cell...
        let username: String = self.usernames[indexPath.row]
        cell.lblUsername.text = username
        
        return cell
    }
}
