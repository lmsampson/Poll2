//
//  CombinedViewController.swift
//  Polls2
//
//  Created by Lisa Sampson on 8/2/18.
//  Copyright © 2018 Lisa Sampson. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, PollControllerProtocol {

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EmbedPollPage" {
            if let vc = segue.destination as? PollControllerProtocol {
                vc.pollController = pollController
            }
        } else if segue.identifier == "EmbedResultsPage" {
            if let vc = segue.destination as? PollControllerProtocol {
                    vc.pollController = pollController
            }
        }
    }

    var pollController: PollController?
    
}
