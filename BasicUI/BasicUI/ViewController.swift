//
//  ViewController.swift
//  BasicUI
//
//  Created by Mario Moreno on 2/8/21.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet var labelResult: UILabel!
    @IBOutlet var textDisplay: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: Methods
    @IBAction func changeButton(_ sender: UIButton) {
        labelResult.text = textDisplay.text?.uppercased()
        print(labelResult.text!)
    }
    
}

