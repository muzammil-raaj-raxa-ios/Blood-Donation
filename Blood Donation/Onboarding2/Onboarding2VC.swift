//
//  Onboarding2VC.swift
//  Blood Donation
//
//  Created by Mag isb-10 on 22/03/2024.
//

import UIKit

class Onboarding2VC: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.navigationItem.hidesBackButton = true
    
    swipeLeftToPopGesture()
  }
  
  
  @IBAction func skipToWelcomVC(_ sender: UIButton) {
    let storyboard = UIStoryboard(name: "WelcomeVC", bundle: .main)
    if let vc = storyboard.instantiateViewController(withIdentifier: "WelcomeVC") as? WelcomeVC {
      self.navigationController?.pushViewController(vc, animated: true)
    }
  }
  
  @IBAction func gotoWelcomeVC(_ sender: UIButton) {
    let storyboard = UIStoryboard(name: "WelcomeVC", bundle: .main)
    if let vc = storyboard.instantiateViewController(withIdentifier: "WelcomeVC") as? WelcomeVC {
      self.navigationController?.pushViewController(vc, animated: true)
    }
  }

}
