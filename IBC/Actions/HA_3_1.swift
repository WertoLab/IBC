//
//  HA_3_1.swift
//  IBC
//
//  Created by Andrey on 22.05.2023.
//

import UIKit

class HA_3_1: UIViewController {

    @IBOutlet weak var repeat_test_results: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        set_properties(repeat_test_results)
    }
    
    func set_properties(_ text:UITextField!){
        text.textAlignment = .center
        text.layer.borderWidth = 1.5
        text.layer.cornerRadius = 10.0
    }

    @IBAction func next_tap(_ sender: Any) {
        if let repeat_result = repeat_test_results.text{
            if(repeat_result != ""){
                switch repeat_result{
                case "0":
                    run_HSt_2()
                case "1":
                    run_HA_4()
                default:
                    print("Please enter numbers from instruction below")
                }
            }else{
                print("Please fill all fields")
            }
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
    
    func run_HA_4(){
        var alertdialog = UIStoryboard(name: "HA_4_screen", bundle: nil)
        if let alert = alertdialog.instantiateViewController(withIdentifier: "ha_4") as? HA_4{
            alert.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
            alert.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func back_tap(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
