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
        
        //performSegue(withIdentifier: "toSecondVC", sender: nil)
        
        
        showDialogMessage()
        
    }
    
    
    private func dontAskAgainActionClicked(alert: UIAlertAction!){
        UserDefaults.standard.set("skip", forKey: "isSkip")
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    private func okActionClicked(alert: UIAlertAction!){
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    func showDialogMessage(){
        let alert = UIAlertController(title: "Warning!", message: "You will go to the next page, are you sure?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Yes", style: .default, handler: okActionClicked)
        let dontAskAgainAction = UIAlertAction(title: "Yes, Don't Ask Again", style: .cancel, handler: dontAskAgainActionClicked)
        alert.addAction(okAction)
        alert.addAction(dontAskAgainAction)
        let skipMessage = UserDefaults.standard.object(forKey: "isSkip")
        if let skipMessageCheck = skipMessage as? String{
            if skipMessageCheck != "skip"{
                UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil) //show alert
            }else{
                performSegue(withIdentifier: "toSecondVC", sender: nil)
            }
        }else{
            UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
        }
        
    }

}






