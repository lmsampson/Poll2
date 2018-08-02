//
//  PollingTabBarViewController.swift
//  Polls2
//
//  Created by Lisa Sampson on 8/2/18.
//  Copyright © 2018 Lisa Sampson. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        passPollControllerToChildVC()
    }

    func passPollControllerToChildVC() {
        for childVC in childViewControllers {
            if let childVC = childVC as? PollControllerProtocol {
                childVC.pollController = pollController
            }
        }
    }
    
    let pollController = PollController()

}
