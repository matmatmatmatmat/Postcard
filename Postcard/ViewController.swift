//
//  ViewController.swift
//  Postcard
//
//  Created by Mat Francisco on 5/11/14.
//  Copyright (c) 2014 MatFrancisco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var buttonSendMail: UIButton!
    @IBOutlet weak var labelNumberTwo: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //testing github with this comment
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        labelNumberTwo.hidden = false
        labelNumberTwo.text = enterNameTextField.text
        labelNumberTwo.textColor = UIColor.purpleColor()
        
        
        enterNameTextField.text = ""
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        buttonSendMail.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

