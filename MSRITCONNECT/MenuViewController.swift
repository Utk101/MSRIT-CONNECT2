//
//  MenuViewController.swift
//  MSRIT CONNECT
//
//  Created by Apple on 16/02/20.
//  Copyright © 2020 KARTLA. All rights reserved.
//

import UIKit
enum  MenuType: Int{
    case user
    case register
    case feedback
    case join
    case use
    case server
    case credit
}

class MenuViewController: UITableViewController {
    var didTapMenuType: ((MenuType) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let menuType = MenuType(rawValue: indexPath.row)
            else {return}
        dismiss(animated: true)
        { [weak self] in
        print("dismissing:\(menuType)")
            self?.didTapMenuType?(menuType)
    }


}
}
