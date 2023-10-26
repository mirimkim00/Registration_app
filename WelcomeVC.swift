//
//  WelcomeVC.swift
//  A2_Mirim_Kim
//
//  Created by Mirim Kim on 2023-10-05.
//

import UIKit

class WelcomeVC: UIViewController {
    
    @IBOutlet weak var lblHello: UILabel!
    
    @IBOutlet weak var lblLogo: UILabel!
    
    @IBOutlet weak var btnLogo: UISwitch!
    
    @IBOutlet weak var pcLogo: UIPageControl!
    
    @IBOutlet weak var logoImgView: UIImageView!
    
    var logo = ["logo1.jpg", "logo2.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblHello.text = "Welcome!"    
        logoImgView.image = UIImage(named: logo[0])
    }
    
    @IBAction func showLogo(_ sender: UISwitch) {
        if sender.isOn {
            logoImgView.isHidden = false
            pcLogo.isHidden = false
        } else {
            logoImgView.isHidden = true
            pcLogo.isHidden = true
        }
    }
    
    @IBAction func changeLogoImg(_ sender: UIPageControl) {
        logoImgView.image = UIImage(named: logo[sender.currentPage])
    }
}
