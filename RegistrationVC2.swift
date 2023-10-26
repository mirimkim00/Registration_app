//
//  RegistrationVC2.swift
//  A2_Mirim_Kim
//
//  Created by Mirim Kim on 2023-10-05.
//

import UIKit

class RegistrationVC2: UIViewController {

    var fname: String = ""
    var lname: String = ""
    var age: String = ""
    var nationality: String = ""
    
    @IBOutlet weak var tfProgram: UITextField!
    
    @IBOutlet weak var lblSemester: UILabel!
    
    @IBOutlet weak var progressSemester: UIProgressView!
    
    @IBOutlet weak var lblMsg: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblMsg.text = "\(fname), please enter the information"
    }
    
    @IBAction func semesterStepper(_ sender: UIStepper) {
        lblSemester.text = String(Int(sender.value))
        progressSemester.setProgress(Float(sender.value)/8, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? RegistrationVC3 else {
            return
        }
        vc.fname = fname
        vc.lname = lname
        vc.age = age
        vc.nationality = nationality
        vc.program = tfProgram.text ?? "Program"
        vc.numofSemesters = lblSemester.text ?? "Number of Semesters"
    }
    
    

}
