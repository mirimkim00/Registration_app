//
//  RegistrationVC4.swift
//  A2_Mirim_Kim
//
//  Created by Mirim Kim on 2023-10-05.
//

import UIKit

class RegistrationVC4: UIViewController {

    var fname: String = ""
    var program: String = ""
    
    @IBOutlet weak var lblRegistration: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblRegistration.text = "Hi, \(fname)! You are registered in \(program) successfully!"
    }
}
