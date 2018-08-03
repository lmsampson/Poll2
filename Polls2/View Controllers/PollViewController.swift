//
//  PollViewController.swift
//  Polls2
//
//  Created by Lisa Sampson on 8/2/18.
//  Copyright © 2018 Lisa Sampson. All rights reserved.
//

import UIKit

class PollViewController: UIViewController, PollControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveResponseWasTapped(_ sender: Any) {
        guard let name = nameTextField.text,
            let response = resultTextField.text else { return }
        
        let timestamp = Date()
        
        pollController?.createPoll(withName: name, response: response, timestamp: Date())
        
        nameTextField.text = ""
        resultTextField.text = ""
    }
    
    @IBAction func switchToCombined(_ sender: AnyObject) {
        tabBarController?.selectedIndex = 2
    }
    
    // NotificationCenter.default.post(name: NSNotification.Name(rawValue: "load"), object: nil)
    
    var pollController: PollController?

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var resultTextField: UITextField!
}
