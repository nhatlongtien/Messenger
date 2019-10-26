//
//  ViewController.swift
//  MyMessenger
//
//  Created by NGUYENLONGTIEN on 10/26/19.
//  Copyright © 2019 NGUYENLONGTIEN. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: UIBarButtonItem.Style.plain, target: self, action: #selector(handleLogout))
    }
    @objc func handleLogout(){
        let loginController = LoginViewController()
        present(loginController, animated: true, completion: nil)
    }
}

