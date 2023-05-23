//
//  HA_5.swift
//  IBC
//
//  Created by Andrey on 23.05.2023.
//

import UIKit

class HA_5: UIViewController {

    @IBOutlet weak var MR_result: UITextField!
    @IBOutlet weak var VA_result: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        set_properties(MR_result)
        set_properties(VA_result)
    }
    
    @IBAction func back_tap(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func next_tap(_ sender: Any) {
        if let result_MR = MR_result.text{
            switch result_MR{
            case "0":
                if let result_VA = VA_result.text{
                    switch result_VA{
                    case "0":
                        print("Enter HA_9")
                    case "1":
                        print("Enter HA_9")
                    default:
                        print("Please enter correct data")
                    }
                    
                }
            case "1":
                print("Enter HA_6_1/HA_6_2")
            default:
                print("Please enter correct data")
            }
        }
    }
    
    func set_properties(_ text:UITextField!){
        text.textAlignment = .center
        text.layer.borderWidth = 1.5
        text.layer.cornerRadius = 10.0
    }
}
