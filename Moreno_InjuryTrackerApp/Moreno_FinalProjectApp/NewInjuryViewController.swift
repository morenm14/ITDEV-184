//
//  NewInjuryViewController.swift
//  TableViewControllerApp
//
//  Created by Mario Moreno on 3/31/21.
//

import UIKit

class NewInjuryViewController: UIViewController {

    @IBOutlet var newInjury: UITextField!
    
    var newInjuryInput = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "saveNewInjurySegue"{
            newInjuryInput = newInjury.text!
        }
        
    }
}
