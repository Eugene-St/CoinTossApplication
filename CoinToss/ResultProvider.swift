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
    
    let yes = "lol, YES!"
    let no = "Fucking NO!"
    let notSure = "Not sure, ask your mom!"
    
    func randomResult() -> String {
        
        var resultsProvider = [yes, no, notSure]
        
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: resultsProvider.count)
        return resultsProvider[randomNumber]
    }
}


