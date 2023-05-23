//
//  HA_1.swift
//  IBC
//
//  Created by Andrey on 21.05.2023.
//

import UIKit

class HA_1: UIViewController {
    
    @IBOutlet weak var HA_1_input: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        set_properties(HA_1_input)
        // Do any additional setup after loading the view.
    }
    @IBAction func next_tap(_ sender: Any) {
        if let result = HA_1_input.text{
            if(result != ""){
                if(result == "1"){
                    HC_1.result = result
                    run_HA_2()
                }else{
                    if(result == "0"){
                        run_HSt_1()
                    }
                }
            }else{
                print("Enter something")
            }
        }
    }
    
    func set_properties(_ text:UITextField){
        text.textAlignment = .center
        text.layer.borderWidth = 1.5
        text.layer.cornerRadius = 10.0
    }
    
    func run_HA_2(){
        var alertdialog = UIStoryboard(name: "HA_2_screen", bundle: nil)
        if let alert = alertdialog.instantiateViewController(withIdentifier: "ha_2") as? HA_2{
            alert.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
            alert.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func run_HSt_1(){
        var alertdialog = UIStoryboard(name: "HSt_1_screen", bundle: nil)
        if let alert = alertdialog.instantiateViewController(withIdentifier: "hst_1") as? HSt_1{
            alert.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
            alert.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
            self.present(alert, animated: true, completion: nil)
        }
    }
}
