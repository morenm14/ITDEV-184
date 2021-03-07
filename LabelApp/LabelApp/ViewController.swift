//
//  ViewController.swift
//  LabelApp
//
//  Created by Mario Moreno on 3/7/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeLabel(_ sender: Any) {
        myLabel.text = "Text created by Swift \n code using Xcode"
        myLabel.numberOfLines = 2
        myLabel.font = UIFont(name: "Courier", size: 14)
        myLabel.backgroundColor = UIColor.yellow
        myLabel.isEnabled = false
    }
    
}

