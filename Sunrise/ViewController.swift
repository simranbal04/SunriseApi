//
//  ViewController.swift
//  Sunrise
//
//  Created by MacStudent on 2019-10-16.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func clickButtonPresses(_ sender: Any) {
        
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
                self.resultLabel.text = "Sunrise: \(sunrise)"


}
}
}

