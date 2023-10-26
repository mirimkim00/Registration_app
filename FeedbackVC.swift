//
//  FeedbackVC.swift
//  A2_Mirim_Kim
//
//  Created by Mirim Kim on 2023-10-05.
//

import UIKit

class FeedbackVC: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    
    @IBOutlet weak var tfSubject: UITextField!
    
    @IBOutlet weak var tfBody: UITextField!
    
    @IBOutlet weak var btnSubmit: UIButton!
    
    @IBOutlet weak var lblMsg: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tfBody.frame.size.height = tfSubject.frame.size.height * 3
        tfBody.contentVerticalAlignment = .top
    }
    
    @IBAction func sendFeedback(_ sender: Any) {
        lblMsg.text = "Thank you for your feedback!"
        tfEmail.text = ""
        tfSubject.text = ""
        tfBody.text = ""
    }
    
    
    
}
