//
//  ViewController.swift
//  NSDateConversion
//
//  Created by Andrew Seeley on 16/04/2016.
//  Copyright © 2016 Seemu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // NSDate to a String
        let date = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        let stringDate = dateFormatter.stringFromDate(date)
        print(stringDate)
        
        // String to a NSDate
        let dateString = "20/03/2016"
        dateFormatter.dateFormat = "dd/MM/yyyy"
        dateFormatter.timeZone = NSTimeZone(abbreviation: "GMT+0:00")
        let dateFromString = dateFormatter.dateFromString(dateString)
        print(dateFromString)
        
        // NSDate GMT +0
        // Your local iOS Timezone
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

