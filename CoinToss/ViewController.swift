//
//  ViewController.swift
//  CoinToss
//
//  Created by Work on 8/16/17.
//  Copyright © 2017 EugeneSt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var factResult: UILabel!
    @IBOutlet weak var rollAction: UIButton!
    
    var results = RollResults()
    let colors = ColorsProvider()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        factResult.text = "Your prediction for now is ready. Press Roll Me button"
        

        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showRollResult() {
        
        factResult.text = results.randomResult()
        
        switch {
        case results.eagle: view.backgroundColor = UIColor.red
        case results.tails: view.backgroundColor = UIColor.green
        default: break
        }
        
        
//        if factResult.text == results.eagle {
//            view.backgroundColor = UIColor.red
//        } else if factResult.text == results.tails {
//            view.backgroundColor = UIColor.green
//        } else {
//            print()
//        }
        
        //let randomColor = colors.randomColor()
//        view.backgroundColor = randomColor
//        rollAction.tintColor = randomColor
        
    }

}

