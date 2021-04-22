//
//  AddPatientViewController.swift
// 
//
//  Created by Mario Moreno on 3/29/21.
//

import UIKit

class AddPatientViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var newPatientName: UITextField!
    @IBOutlet var newPatientAge: UITextField!
    @IBOutlet var newPatientInjury: UITextField!
    @IBOutlet var sexSelector: UIPickerView!
    
    var sexPicker: [String] = [String]()
    
    var inputName = ""
    var inputSex = ""
    var inputAge = ""
    var inputInjury = ""
    var selectedSex = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sexSelector.dataSource = self
        sexSelector.delegate = self
        sexPicker = ["Male", "Female", "Unassigned"]
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sexPicker.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sexPicker[row]
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "doneSegue"{
            
            let sexSelectorIndex = sexSelector.selectedRow(inComponent: 0)
            selectedSex = sexPicker[sexSelectorIndex]
            
            inputName = newPatientName.text!
            inputInjury = newPatientInjury.text!
            inputAge = newPatientAge.text!
            inputSex = selectedSex
        }
        
    }
}
