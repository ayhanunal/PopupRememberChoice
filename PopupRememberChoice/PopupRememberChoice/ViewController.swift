//
//  ViewController.swift
//  PopupRememberChoice
//
//  Created by Ayhan Ünal on 24.05.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func secondPageClicked(_ sender: Any) {
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    

}

