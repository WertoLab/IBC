//
//  HA_2.swift
//  IBC
//
//  Created by Andrey on 21.05.2023.
//

import UIKit

class HA_2: UIViewController {

    @IBOutlet weak var ischemic_desease: UITextField!
    @IBOutlet weak var VA: UITextField!
    @IBOutlet weak var LVEF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        set_properties(ischemic_desease)
        set_properties(VA)
        set_properties(LVEF)
    }
    
    func set_properties(_ text:UITextField!){
        text.layer.cornerRadius = 10.0
        text.layer.borderWidth = 1.5
        text.textAlignment = .center
    }
    
    @IBAction func back_tap(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func next_tap(_ sender: Any) {
        if(ischemic_desease.text! != "" && VA.text! != "" && LVEF.text! != ""){
            if(ischemic_desease.text! == "1" && VA.text! == "1" && (Int(LVEF.text!) ?? 0)>=40){
                print("ok")
                HC_2.VA = VA.text!
                HC_2.ischemic_desease = ischemic_desease.text!
                HC_2.LVEF = LVEF.text!
                run_HA_3()
            }else{
                run_HSt_2()
            }
        }else{
            print("Enter all fields")
        }
    }
    
    func run_HA_3(){
        var alertdialog = UIStoryboard(name: "HA_3_screen", bundle: nil)
        if let alert = alertdialog.instantiateViewController(withIdentifier: "ha_3") as? HA_3{
            alert.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
            alert.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func run_HSt_2(){
        var alertdialog = UIStoryboard(name: "HSt_2_screen", bundle: nil)
        if let alert = alertdialog.instantiateViewController(withIdentifier: "hst_2") as? HSt_2{
            alert.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
            alert.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
}
