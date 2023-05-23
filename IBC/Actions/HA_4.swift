//
//  HA_4.swift
//  IBC
//
//  Created by Andrey on 22.05.2023.
//

import UIKit

class HA_4: UIViewController {

    @IBOutlet weak var diagnostics_result: UITextField!
    @IBOutlet weak var VA_results: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        set_properties(diagnostics_result)
        set_properties(VA_results)
    }

    @IBAction func next_tap(_ sender: Any) {
        if(diagnostics_result.text! != "" && VA_results.text! != ""){
            if let diag_result = diagnostics_result.text{
                switch diag_result{
                case "0":
                    if let VA_result = VA_results.text{
                        switch VA_result{
                        case "0":
                            print("Enter HA_9")
                        case "1":
                            print("Enter HA_9")
                        default:
                            print("Please enter correct data")
                        }
                    }
                case "1":
                    run_HA_5()
                default:
                    print("Please enter correct data")
                }
            }
        }
    }
    
    func set_properties(_ text:UITextField!){
        text.layer.borderWidth = 1.5
        text.textAlignment = .center
        text.layer.cornerRadius = 10.0
    }
    
    func run_HA_5(){
        var alertdialog = UIStoryboard(name: "HA_5_screen", bundle: nil)
        if let alert = alertdialog.instantiateViewController(withIdentifier: "ha_5") as? HA_5{
            alert.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
            alert.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func back_tap(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
