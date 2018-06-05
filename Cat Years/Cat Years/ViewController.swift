//
//  ViewController.swift
//  Cat Years
//
//  Created by Jose on 6/5/18.
//  Copyright © 2018 Plicod. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtYears: UITextField!
    @IBOutlet weak var lblCatYears: UILabel!
    
    @IBAction func btnConvert(_ sender: Any) {
        if let years = txtYears.text {
            if let yearsAsNumber = Int(years) {
                let catYears = years * 7
                lblCatYears.text = "Your cat is in \(catYears) cat years"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

