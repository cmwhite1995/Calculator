//
//  ViewController.swift
//  Calculator
//
//  Created by christopher white on 8/18/18.
//  Copyright © 2018 christopher white. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    var NumbersOnScreen:Double = 0;
    var PreviousNumber:Double = 0;
    var Operation = 0;
    var PerformingMath = false;
    
    @IBAction func numbers(_ sender: UIButton) {
        if(PerformingMath == true)
        {
            label.text = String(sender.tag-1);
            NumbersOnScreen = Double(label.text!)!
            PerformingMath = false;
        }
        else{
            label.text = label.text! + String(sender.tag-1)
            NumbersOnScreen = Double(label.text!)!
        }
    }
    
    @IBAction func Operations(_ sender: UIButton) {
        
        if(label.text != "" && sender.tag != 11 && sender.tag != 16 ){
            PreviousNumber = Double(label.text!)!
            if(sender.tag == 12) // Divide
            {
                label.text = "/"
            }
            else if(sender.tag == 13) // Multiply
            {
                label.text = "x"
            }
            else if(sender.tag == 14) // Subtract
            {
                label.text = "-"
            }
            else if(sender.tag == 15) // Addition
            {
                label.text = "+"
            }
            Operation = sender.tag
            PerformingMath = true
            
        }
        else if sender.tag == 16
        {
            if(Operation == 12)
            {
                label.text = String(PreviousNumber / NumbersOnScreen)
            }
           else if(Operation == 13)
            {
                label.text = String(PreviousNumber * NumbersOnScreen)
            }
           else if(Operation == 14)
            {
                label.text = String(PreviousNumber - NumbersOnScreen)
            }
           else if(Operation == 15)
            {
                label.text = String(PreviousNumber + NumbersOnScreen)
            }
        }
        else if(sender.tag == 11)
        {
            label.text = ""
            PreviousNumber = 0
            NumbersOnScreen = 0
            Operation = 0
        }
    }
    
    



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib. fbhghghccscscscvcvcv
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

