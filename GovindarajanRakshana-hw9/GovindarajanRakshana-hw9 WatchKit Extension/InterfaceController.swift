//
//  InterfaceController.swift
//  GovindarajanRakshana-hw9 WatchKit Extension
//
//  Created by Rakshana Gov on 4/24/17.
//  Copyright © 2017 Rakshana Govindarajan. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {
    //var counter: Int?
    @IBOutlet var lblText: WKInterfaceLabel!
    
    var counter = 0
    var counter2 = 0
    @IBAction func btnNext() {
        
        if counter == 0 {
            //counter = counter + 1
            counter2 = 1
            lblText.setText("iWatch App")
        }
        
        if counter == 1 {
            //counter = counter + 1
            counter2 = 2
            lblText.setText("YAY!")
        }
        
        if counter == 2 {
            counter2 = 0
            lblText.setText("My First")
        }
        
        counter = counter2
       
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)

        // Configure interface objects here.
        lblText.setText("My First")
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
