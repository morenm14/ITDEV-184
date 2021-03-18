//
//  ViewController.swift
//  ControlApp
//
//  Created by Mario Moreno on 3/18/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var buttonObject: UIButton!
    @IBOutlet var labelSwitch: UILabel!
    @IBOutlet var switchObject: UISwitch!
    @IBOutlet var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentedControl.insertSegment(withTitle: "Three", at: 2, animated: true)
        segmentedControl.setWidth(50, forSegmentAt: 0)
        segmentedControl.setWidth(50, forSegmentAt: 1)
        segmentedControl.setWidth(50, forSegmentAt: 2)
        
    }


    @IBAction func touchInside(_ sender: UIButton) {
        buttonObject.setTitle("New", for: UIControl.State.normal)
        switchObject.onTintColor = UIColor.red
        switchObject.tintColor = UIColor.blue
    }
    @IBAction func switchChanged(_ sender: UISwitch) {
        if switchObject.isOn{
            labelSwitch.text = "On"
        }else{
            labelSwitch.text = "Off"
        }
    }
    @IBAction func segmentedControlTapped(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            labelSwitch.text = "One"
            break
        case 1:
            labelSwitch.text = "Two"
            break
            
        default:
            labelSwitch.text = "Three"        }
    }
}

