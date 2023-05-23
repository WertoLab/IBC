//
//  HA_3.swift
//  IBC
//
//  Created by Andrey on 22.05.2023.
//

import UIKit

class HA_3: UIViewController {

    @IBOutlet weak var test_result: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        set_properties(test_result)
    }
    
    func set_properties(_ text:UITextField!){
        text.textAlignment = .center
        text.layer.borderWidth = 1.5
        text.layer.cornerRadius = 10
    }
    
    
    @IBAction func next_tap(_ sender: Any) {
        if let result = test_result.text{
            if(result != ""){
                HC_3.test_result = result
                switch result{
                case "0":
                    run_HSt_2()
                case "1":
                    run_HA_4()
                case "2":
                    run_HA_3_1()
                default:
                    print("Enter numbers from below")
                }
            }else{
                print("Please fill all fields")
            }
        }
    }
    
    @IBAction func back_tap(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func run_HA_3_1(){
        var alertdialog = UIStoryboard(name: "HA_3_1_screen", bundle: nil)
        if let alert = alertdialog.instantiateViewController(withIdentifier: "ha_3_1") as? HA_3_1{
            alert.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
            alert.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func run_HA_4(){
        var alertdialog = UIStoryboard(name: "HA_4_screen", bundle: nil)
        if let alert = alertdialog.instantiateViewController(withIdentifier: "ha_4") as? HA_4{
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
