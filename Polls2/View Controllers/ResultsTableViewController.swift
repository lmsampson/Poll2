//
//  ResultsTableViewController.swift
//  Polls2
//
//  Created by Lisa Sampson on 8/2/18.
//  Copyright © 2018 Lisa Sampson. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController, PollControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(loadList), name: NSNotification.Name(rawValue: "load"), object: nil)
    }
    
    @objc func loadList(notification: NSNotification){
        self.tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pollController?.polls.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PollCell", for: indexPath)

        let poll = pollController?.polls[indexPath.row]
        cell.textLabel?.text = poll?.name
        cell.detailTextLabel?.text = poll?.response

        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    var pollController: PollController?
    
    

}
