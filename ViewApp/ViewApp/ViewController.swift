//
//  ViewController.swift
//  ViewApp
//
//  Created by Mario Moreno on 3/17/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        
        if touch?.view == imageView{
            print("Touched")
        }else{
            print("Nothing")
        }
    }


}

