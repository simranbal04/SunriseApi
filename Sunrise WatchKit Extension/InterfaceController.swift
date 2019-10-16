//
//  InterfaceController.swift
//  Sunrise WatchKit Extension
//
//  Created by MacStudent on 2019-10-16.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import WatchKit
import Foundation
import  Alamofire
import SwiftyJSON


class InterfaceController: WKInterfaceController {

    
    @IBOutlet weak var buttonPressed: WKInterfaceButton!
    
    
    @IBOutlet weak var outputLabel: WKInterfaceLabel!
    
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
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
    
    
    @IBAction func showTime() {
        
        
          print("Button Pressed")
                
                //1. go to sunrise api
                //2. wait for the website to respond
        //        let websiteURL = "https://sunrise-sunset.org/"
        //
        //        AF.request(websiteURL).responseJSON {
        //                   (response) in
        //    }
                AF.request("https://api.sunrise-sunset.org/json?lat=43.6532&lng=-79.3832").responseJSON {
                            (xyz) in
             // 2. write your code to deal with the JSON response
                        print(xyz)
                    
                    //convert the response to a JSON Object
                    
                    let x = JSON(xyz.value)
                     let sunrise = x["results"]["sunrise"]
                                let sunset = x["results"]["sunset"]
                    
                                print("Sunrise: \(sunrise)")
                                print("Sunset: \(sunset)")
                        self.outputLabel.setText("Sunrise: \(sunrise)")


        }
        }
        
        
        
        
    }
    

