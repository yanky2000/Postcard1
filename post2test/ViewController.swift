//
//  ViewController.swift
//  post2test
//
//  Created by Victor Yang on 07.05.15.
//  Copyright (c) 2015 Victor Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameField: UITextField!
    @IBOutlet weak var enterMessageField: UITextField!
    @IBOutlet weak var sendMessageButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMessageButtonPressed(sender: UIButton) {
        

        nameLabel.text = enterNameField.text
        messageLabel.text = enterMessageField.text
        nameLabel.textColor = UIColor.brownColor()
        messageLabel.textColor = UIColor.brownColor()
        
        
        enterNameField.text = ""
        enterMessageField.text = ""
        
        // Show name and message text on screen
        nameLabel.hidden = false
        messageLabel.hidden = false
        
        sendMessageButton.setTitle("Message sent", forState: UIControlState.Normal)
        
        //Hide keyboard
        enterNameField.resignFirstResponder()
        enterMessageField.resignFirstResponder()
        
        
    }

}

