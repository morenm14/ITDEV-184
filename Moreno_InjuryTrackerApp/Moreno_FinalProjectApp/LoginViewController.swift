//
//  ViewController.swift

//
//  Created by Mario Moreno on 3/25/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    let authUser = "Mario"
    let authPassword = "myapp"

    @IBOutlet var loginButton: UIButton!
    @IBOutlet var username: UITextField!
    @IBOutlet var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }

    @IBAction func login(_ sender: UIButton) {
        
        if username.text != authUser || password.text != authPassword{
            
            let alert = UIAlertController(title: "No Match", message: "invalid username or password. Try again", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
            
            username.text = ""
            password.text = ""
        } else if username.text == authUser && password.text == authPassword{
            
//            if let vc = storyboard?.instantiateViewController(identifier: "PatientsScreen") as? PatientsScreen{
//                navigationController?.pushViewController(vc, animated: true)
//            }
            
        }
        
        username.text = ""
        password.text = ""
    }
    
    @IBAction func logout(segue: UIStoryboardSegue) {
        
    }
    
}

