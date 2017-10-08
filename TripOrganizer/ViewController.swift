//
//  ViewController.swift
//  TripOrganizer
//
//  Created by Rakesh Maurya on 9/24/17.
//  Copyright © 2017 tripOrganizer. All rights reserved.
//

import UIKit

var tripID = ""

class ViewController: UIViewController {
    
    @IBOutlet weak var outlet: UITextField!
    
    @IBAction func action(_ sender: Any) {
        if (outlet.text != "") {
            tripID = outlet.text!
            performSegue(withIdentifier: "toDetailView", sender: self)
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

