//
//  InterfaceController.swift
//  HowManyFingers WatchKit Extension
//
//  Created by Nick on 3/1/16.
//  Copyright © 2016 Nick. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var guessNumber: Int = 3

    @IBOutlet var slider: WKInterfaceSlider!
    @IBOutlet var userGuessesLbl: WKInterfaceLabel!
    @IBOutlet var resultLbl: WKInterfaceLabel!
    
    @IBAction func sliderChanged(value: Float) {
        guessNumber = Int(value * 5)
        userGuessesLbl.setText("Your guess: \(guessNumber)")
    }
    
    @IBAction func guessPressed() {
        
        let randomNumber = Int(arc4random_uniform(6))

        
        if guessNumber == randomNumber {
            resultLbl.setText("You got it!")
        } else if guessNumber < randomNumber {
            resultLbl.setText("Too low, it was \(randomNumber)")
        } else {
            resultLbl.setText("Too high, it was \(randomNumber)")
        }

    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
