//
//  PatienDetailController.swift
//
//  Created by Mario Moreno on 3/28/21.
//

import UIKit

class PatienDetailController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var patientAge: UILabel!
    @IBOutlet var patientSex: UILabel!
    @IBOutlet var patientName: UILabel!
    @IBOutlet var tableView: UITableView!
    
    var name = ""
    var sex = ""
    var age = ""
    var injury = ""
    
    var injuries: [String] = []
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        patientName.text = name
        patientSex.text = sex
        patientAge.text = age
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func injurySetup(injuries: [String]){
        self.injuries = injuries
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return injuries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "injuryCell")
        cell?.textLabel?.text = injuries[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            injuries.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    
    @IBAction func cancelNewInjury(segue: UIStoryboardSegue){
        
    }
    
    @IBAction func saveNewInjury(segue: UIStoryboardSegue){
        
        let vc = segue.source as! NewInjuryViewController
        
        injury = vc.newInjuryInput
        injuries.insert(injury, at: 0)
        tableView.insertRows(at: [IndexPath(row: 0, section: 0)], with: .fade)
        tableView.reloadData()
    }
    
}
