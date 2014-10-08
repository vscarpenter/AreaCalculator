//
//  ViewController.swift
//  Area Calculator
//
//  Created by Carpenter, Vinny on 10/7/14.
//  Copyright (c) 2014 Carpenter, Vinny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var widthTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func buttonPressed(sender: AnyObject) {
        
        println("Button was pressed")
        
        var widthString = NSString(string: widthTextField.text)
        var heightString = NSString(string: heightTextField.text)
        var widthDouble : Double? = widthString.doubleValue
        var heightDouble : Double?  = heightString.doubleValue
        
        if (widthDouble != nil && heightDouble != nil) {
            println("valid input - width= \(widthDouble) and height = \(heightDouble)")
            var area = widthDouble! * heightDouble!
            outputLabel.text = "\(area)"
        }
       
    }
}

