//
//  ViewController.swift
//  IBC
//
//  Created by Andrey on 19.05.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        var alertDialog = UIStoryboard(name: "HA_1_screen", bundle: nil)
        if let myAlert = alertDialog.instantiateViewController(withIdentifier: "ha_1") as? HA_1 {
            
            myAlert.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
            myAlert.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
            self.present(myAlert, animated: true, completion: nil)
        }
    }

}

