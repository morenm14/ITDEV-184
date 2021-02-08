//
//  ViewController.swift
//  BasicUI
//
//  Created by Mario Moreno on 2/8/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var labelResult: UILabel!
    @IBOutlet var textMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeButton(_ sender: UIButton) {
        labelResult.text = textMessage.text?.uppercased()
    }
    
}

