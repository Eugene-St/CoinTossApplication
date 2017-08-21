//
//  ViewController.swift
//  CoinToss
//
//  Created by Work on 8/16/17.
//  Copyright © 2017 EugeneSt. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var url = NSURL(fileURLWithPath: Bundle.main.path(forResource: "button-3", ofType: "wav")!)
    var audioPlayer = AVAudioPlayer()
    @IBOutlet weak var factResult: UILabel!
    @IBOutlet weak var rollAction: UIButton!
    
    var results = RollResults()
    let colors = ColorsProvider()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        factResult.text = "Your prediction for now is ready. Press Roll Me button"
        
        
        do {
           try audioPlayer = AVAudioPlayer(contentsOf: url as URL)
        } catch {
            NSLog("Error: There is an error with the audio file named button-3.wav")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showRollResult() {
        
        factResult.text = results.randomResult()
//        pictures.image = UIImage(named: "no-clipart.jpg")
        audioPlayer.play()
        
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

