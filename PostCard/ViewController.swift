//
//  ViewController.swift
//  PostCard
//
//  Created by PHYLLIS HOLLINGSHEAD on 9/12/14.
//  Copyright (c) 2014 PhollyPhlox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var MessageLabel: UILabel!
    
    @IBOutlet weak var NameTextBox: UITextField!

    @IBOutlet weak var MessageTextBox: UITextField!
    
    @IBOutlet var SendButtonControl: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func SendButton(sender: UIButton) {
        
        MessageLabel.hidden = false
        MessageLabel.text = "Hello " + NameTextBox.text + " " + MessageTextBox.text
        NameTextBox.text = ""
        MessageTextBox.text = ""
        MessageTextBox.resignFirstResponder()
        MessageLabel.textColor = UIColor.redColor()
        SendButtonControl.setTitle("Mail Sent", forState:UIControlState.Normal)
        var answer = calcAge(2)
        
        print(answer)
        
    }
    
    func calcAge(age: Int) -> Int
    {
        
        let age = age + 2
        return age
    }
    
    
}

