//
//  ViewController.swift
//  My First App
//
//  Created by Jose on 5/23/18.
//  Copyright © 2018 Plicod. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblMessage: UILabel!
    
    @IBAction func onButtonClicked(_ sender: Any) {
        print("Button clicked!")
        // lblMessage.text = "Button was clicked"
        
        if let name = txtName.text  {
            lblMessage.text = "Welcome, " + name
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("Hello World from Swift 4!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

