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
        
        switch factResult.text! {
        case results.no: view.backgroundColor = colors.red //RED color
        case results.yes: view.backgroundColor = colors.green //GREEN color
        case results.notSure: view.backgroundColor = colors.camel //CAMEL color
        default: break
        }
        
        switch factResult.text! {
        case results.no: rollAction.tintColor = colors.red
        case results.yes: rollAction.tintColor = colors.green
        case results.notSure: rollAction.tintColor = colors.camel
        default: break
        }
    }
}

