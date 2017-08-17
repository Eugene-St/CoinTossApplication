//
//  ResultProvider.swift
//  CoinToss
//
//  Created by Work on 8/16/17.
//  Copyright © 2017 EugeneSt. All rights reserved.
//

import UIKit
import GameKit

struct RollResults {
    
    let eagle = "EAGLE! Well, you may do what you wanted to do, the result is going to be successful"
    let tails = "TAILS! Not sure that you should proceed. Try to find a workaround!"
    
    func randomResult() -> String {
        
        var resultsProvider = [eagle, tails]
        
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: resultsProvider.count)
        return resultsProvider[randomNumber]
    }
}


