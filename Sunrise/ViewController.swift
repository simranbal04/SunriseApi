//
//  ViewController.swift
//  Sunrise
//
//  Created by MacStudent on 2019-10-16.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

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
        let websiteURL = "https://sunrise-sunset.org/"
        
        AF.request(websiteURL).responseJSON {
                   (response) in
    }
    

}
}

