//
//  PollController.swift
//  Polls2
//
//  Created by Lisa Sampson on 8/2/18.
//  Copyright © 2018 Lisa Sampson. All rights reserved.
//

import Foundation

class PollController {
    
    func createPoll(withName name: String, response: String) {
        let poll = Poll(name: name, response: response)
        polls.append(poll)
    }
    
    var polls: [Poll] = []
}
