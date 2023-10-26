//
//  RegistrationVC.swift
//  A2_Mirim_Kim
//
//  Created by Mirim Kim on 2023-10-05.
//

import UIKit

class RegistrationVC: UIViewController {


    
    
    @IBOutlet weak var btnNext: UIButton!
    
    @IBOutlet weak var tfFName: UITextField!
    
    @IBOutlet weak var tfLName: UITextField!
    
    @IBOutlet weak var tfAge: UITextField!
    
    @IBOutlet weak var tfNationality: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? RegistrationVC2 else {
            return
        }
        vc.fname = tfFName.text ?? "FirstName"
        vc.lname = tfLName.text ?? "LastName"
        vc.age = tfAge.text ?? "Age"
        vc.nationality = tfNationality.text ?? "Nationality"
    }


}
