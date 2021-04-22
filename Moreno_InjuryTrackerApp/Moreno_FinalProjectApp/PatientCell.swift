//
//  PatientCell.swift
//
//
//  Created by Mario Moreno on 3/27/21.
//

import UIKit

class PatientCell: UITableViewCell {

    @IBOutlet var patientName: UILabel!
    @IBOutlet var patientSex: UILabel!
    @IBOutlet var patientAge: UILabel!
    
    func setPatient(patient: Patient) {
        patientName.text = patient.name
        patientSex.text = patient.sex
        patientAge.text = patient.age
    }
}
