//
//  ColorsProvider.swift
//  CoinToss
//
//  Created by Work on 8/17/17.
//  Copyright © 2017 EugeneSt. All rights reserved.
//

import UIKit
import GameKit

struct ColorsProvider {
    let colors = [
    
    UIColor(red: 20/255.0, green: 155/255.0, blue: 88/255.0, alpha: 1.0), //jade
    UIColor(red: 222/255.0, green: 170/255.0, blue: 46/255.0, alpha: 1.0), //meat brown
    UIColor(red: 118/255.0, green: 195/255.0, blue: 230/255.0, alpha: 1.0), //sky blue
    UIColor(red: 51/255.0, green: 103/255.0, blue: 180/255.0, alpha: 1.0), //tufts blue
    UIColor(red: 235/255.0, green: 134/255.0, blue: 173/255.0, alpha: 1.0), //pink
    UIColor(red: 111/255.0, green: 15/255.0, blue: 34/255.0, alpha: 1.0), //ruby
    UIColor(red: 79/255.0, green: 141/255.0, blue: 143/255.0, alpha: 1.0) //cadet blue
    
    ]
    
    func randomColor() -> UIColor {
        let randomColor = GKRandomSource.sharedRandom().nextInt(upperBound: colors.count)
        return colors[randomColor]
    }
    
}
