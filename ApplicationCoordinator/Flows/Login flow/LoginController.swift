//
//  LoginController.swift
//  ApplicationCoordinator
//
//  Created by Andrey Panov on 23/04/16.
//  Copyright © 2016 Andrey Panov. All rights reserved.
//

import UIKit

class LoginController: UIViewController, FlowController {

    //controller handler
    typealias T = AuthActions //enum Actions type
    var completionHandler: (T -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Login"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Hide", style: .Plain, target: self, action: #selector(ItemCreateController.hideButtonClicked(_:)))
    }
    @IBAction func hideButtonClicked(sender: UIBarButtonItem) {
        completionHandler?(.Complete)
    }
}
