//
//  WelcomeVC.swift
//  Blood Donation
//
//  Created by Mag isb-10 on 22/03/2024.
//

import UIKit

class WelcomeVC: UIViewController {

  @IBOutlet weak var loginBtn: UIButton!
  
  override func viewDidLoad() {
        super.viewDidLoad()
      
      self.navigationItem.hidesBackButton = true
    
    loginBtn.layer.borderWidth = 2
    loginBtn.layer.borderColor = UIColor.primaryRed.cgColor
    }
  
  @IBAction func gotoLoginVC(_ sender: UIButton) {
    let storyboard = UIStoryboard(name: "LoginVC", bundle: .main)
    if let vc = storyboard.instantiateViewController(withIdentifier: "LoginVC") as? LoginVC {
      self.navigationController?.pushViewController(vc, animated: true)
    }
  }
  

  @IBAction func gotoRegisterVC(_ sender: UIButton) {
    let storyboard = UIStoryboard(name: "RegisterVC", bundle: .main)
    if let vc = storyboard.instantiateViewController(withIdentifier: "RegisterVC") as? RegisterVC {
      self.navigationController?.pushViewController(vc, animated: true)
    }
  }
  
}
