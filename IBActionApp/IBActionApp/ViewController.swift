//
//  ViewController.swift
//  IBActionApp
//
//  Created by Mario Moreno on 3/18/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelResult.frame.size.width = 120
    }

    @IBAction func buttonTapped(_ sender: Any) {
        switch (sender as AnyObject).tag{
        case 1:
            labelResult.text = "Button 1"
            break
        case 2:
            labelResult.text =  "Button 2"
            break
        default:
            labelResult.text = "default"
        }
    }
    
    @IBAction func buttonRespond(_ sender: UIButton) {
        
        switch sender.tag {
        case 1:
            labelResult.text = sender.titleLabel?.text
            case 2:
                labelResult.text = sender.titleLabel?.text
        default:
            labelResult.text = "default"
        }
    }
}

