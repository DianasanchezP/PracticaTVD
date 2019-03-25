//
//  ViewController.swift
//  DIANA210319TVD
//
//  Created by Universidad Politecnica de Gómez Palacio on 21/03/19.
//  Copyright © 2019 UPGOP. All rights reserved.
//

import UIKit

class UserVC: UIViewController
{
    var users: [User] = []

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.setUsersDefault()
    }
    func setUsersDefault()
    {
        self.users.append(User(firstName: "Alondra", lastName:"Rodriguez"))
        self.users.append(User(firstName: "Diana", lastName:"Sanchez"))
        self.users.append(User(firstName: "Leidy", lastName:"Palomino"))
        self.users.append(User(firstName: "Beatriz", lastName:"Rivera"))
        self.users.append(User(firstName: "Carlos", lastName:"Hernandez"))
    }
}
extension UserVC: UITableViewDataSource
{
    // MARK: - Table view data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell: UserTVCell = tableView.dequeueReusableCell(withIdentifier: "userTVCell", for: indexPath) as! UserTVCell
        
        
        // Configure the cell...
        let user: User = self.users[indexPath.row]
        cell.lblUsername.text = "\(user.firstName!) \(user.lastName!)"
        
        return cell
    }
}

extension UserVC: UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        print("didSelectRowAt.indexPath.row \(indexPath.row)")
    }
    
}

