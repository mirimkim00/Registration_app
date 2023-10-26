//
//  HelloVC.swift
//  A2_Mirim_Kim
//
//  Created by Mirim Kim on 2023-10-05.
//

import UIKit

class HelloVC: UIViewController {

    var days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    @IBOutlet weak var lblHello: UILabel!
    
    @IBOutlet weak var segDays: UISegmentedControl!
    
    @IBOutlet weak var lblDays: UILabel!
    
    @IBOutlet weak var SlideEventTxt: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segDays.selectedSegmentIndex = -1
    }
    
    @IBAction func selectDay(_ sender: UISegmentedControl) {
        let event: String
        let today = days[sender.selectedSegmentIndex]
        switch today {
            case "Monday":
                event = "Pizza day"
            case "Tuesday":
                event = "Poutine day"
            case "Wednesday":
                event = "Party day"
            case "Thursday":
                event = "Pasta day"
            case "Friday":
                event = "Movie night"
            default:
                event = "none"
        }
        lblDays.text = "\(days[sender.selectedSegmentIndex])'s event is \(event)"
    }
    
    @IBAction func changeEventTxtSize(_ sender: UISlider) {
        let fontSize = CGFloat(sender.value * 24)
        lblDays.font = UIFont.systemFont(ofSize: fontSize)
    }
}
