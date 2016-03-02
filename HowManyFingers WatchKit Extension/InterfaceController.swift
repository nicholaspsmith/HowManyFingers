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

    @IBOutlet var slider: WKInterfaceSlider!
    @IBOutlet var userGuessesLbl: WKInterfaceLabel!
    @IBOutlet var resultLbl: WKInterfaceLabel!
    
    @IBAction func sliderChanged(value: Float) {
        userGuessesLbl.setText("Your guess: \(Int(value * 5))")
    }
    
    @IBAction func guessPressed() {
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
