//
//  PollController.swift
//  Polls2
//
//  Created by Lisa Sampson on 8/2/18.
//  Copyright © 2018 Lisa Sampson. All rights reserved.
//

import Foundation

class PollController {
    
    func createPoll(withName name: String, response: String, timestamp: Date) {
        let poll = Poll(name: name, response: response, timestamp: timestamp)
        polls.append(poll)
        polls.sort { (leftPoll, rightPoll) -> Bool in
            if leftPoll.timestamp < rightPoll.timestamp {
                return true
            } else {
                return false
            }
        }
    }
    
    var polls: [Poll] = []
}
