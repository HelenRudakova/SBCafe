//
//  MenuListViewController.swift
//  SBCafe
//
//  Created by Елена Рудакова on 02.05.2023.
//

import UIKit

final class MenuListViewController: UITableViewController {
    
    private var menuList = Menu.getMenuList()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 200
        
    }

// MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let menu = menuList[indexPath.row]
        let detailsVC = segue.destination as? MenuDetailsViewController
        detailsVC?.menuCafe = menu
    }
}
// MAK: - UITableViewDataSouce
extension MenuListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        menuList.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCafe", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let menu = menuList[indexPath.row]
        content.text = menu.dishMenu
        content.secondaryText = menu.priceMenu
        content.image = UIImage(named: menu.title)
        content.imageProperties.cornerRadius = 10
        cell.contentConfiguration = content
        
        
        
        return cell
    }
}
    
    extension MenuListViewController {
    }

