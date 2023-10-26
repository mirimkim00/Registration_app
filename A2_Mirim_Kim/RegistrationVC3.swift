//
//  RegistrationVC3.swift
//  A2_Mirim_Kim
//
//  Created by Mirim Kim on 2023-10-05.
//

import UIKit

class RegistrationVC3: UIViewController {

    var fname: String = ""
    var lname: String = ""
    var age: String = ""
    var nationality: String = ""
    var program: String = ""
    var numofSemesters: String = ""
    
    @IBOutlet weak var lblPersonalInfo: UILabel!
    
    @IBOutlet weak var lblProgramInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblPersonalInfo.text = " Name: \(fname) \(lname) \n Age: \(age) \n Nationality: \(nationality)"
        
        lblProgramInfo.text = " Program: \(program) \n Number of Semesters: \(numofSemesters)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? RegistrationVC4 else {
            return
        }
        vc.fname = fname
        vc.program = program
    }
}
