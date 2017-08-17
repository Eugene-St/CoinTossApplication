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
    
    let yes = "YES!"
    let no = "NO!"
    let notSure = "Well, I am not sure at the moment, try again"
    
    func randomResult() -> String {
        
        var resultsProvider = [yes, no, notSure]
        
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: resultsProvider.count)
        return resultsProvider[randomNumber]
    }
}


