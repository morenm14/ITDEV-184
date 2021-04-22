//
//  PatientsScreen.swift
// 
//
//  Created by Mario Moreno on 3/27/21.
//

import UIKit

class PatientsScreen: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var tableView: UITableView!
    
    var newPatientName = ""
    var newPatientSex = ""
    var newPatientAge = ""
    var newPatientInjury = ""
    
    var patients: [Patient] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        patients = createPatients()
        patients.sort(by: {$0.name < $1.name})
        
       
    }
    
    func createPatients() -> [Patient] {
        var tempPatients: [Patient] = []
        let patien1 = Patient(name: "Mario Moreno", sex: "Male", age: "36", injuries: ["injury 1", "injury 2"])
        let patien2 = Patient(name: "Diana Sida", sex: "Female", age: "30", injuries: ["injury 1"])
        let patien3 = Patient(name: "Jane Doe", sex: "Female", age: "25", injuries: ["injury 1", "injury 2","injury 2"])
        let patien4 = Patient(name: "Juana Maza", sex: "Female", age: "21", injuries: ["injury 1", "injury 2"])
        
        tempPatients.append(patien1)
        tempPatients.append(patien2)
        tempPatients.append(patien3)
        tempPatients.append(patien4)
        
        return tempPatients
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        patients.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let selectedPatient = patients[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "PatientCell", for: indexPath) as! PatientCell
        cell.setPatient(patient: selectedPatient)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedPatient = patients[indexPath.row].name
        let selectedSex = patients[indexPath.row].sex
        let selectedAge = patients[indexPath.row].age
        let selectedInjuries = patients[indexPath.row].injuries
        
        if let vc = storyboard?.instantiateViewController(identifier: "PatientDetail") as? PatienDetailController{
            vc.name = selectedPatient
            vc.sex = selectedSex
            vc.age = selectedAge
            
            vc.injurySetup(injuries: selectedInjuries)
            
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    //delete row
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            patients.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
   
    @IBAction func cancel(segue: UIStoryboardSegue) {
        
    }
    
    @IBAction func done(segue: UIStoryboardSegue){
        
        let vc = segue.source as! AddPatientViewController
        
        newPatientName = vc.inputName
        newPatientSex = vc.inputSex
        newPatientAge = vc.inputAge
        newPatientInjury = vc.inputInjury
        
        let newPatient = Patient(name: "\(newPatientName)", sex: "\(newPatientSex)", age: "\(newPatientAge)", injuries: [ "\(newPatientInjury)"])
        
        patients.insert(newPatient, at: 0)
        tableView.reloadData()
    }
    
    
    @IBAction func patientsSorted(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            patients.sort(by: {$0.name < $1.name})
            tableView.reloadData()
            break
        case 1:
            patients.sort(by: {$0.name > $1.name})
            tableView.reloadData()
            
            break
        default: break
            
        }
    }
    
}
