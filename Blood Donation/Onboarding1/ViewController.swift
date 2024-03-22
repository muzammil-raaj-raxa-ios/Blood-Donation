//
//  ViewController.swift
//  Blood Donation
//
//  Created by Mag isb-10 on 22/03/2024.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func gotoOnboarding2VC(_ sender: UIButton) {
    let storyboard = UIStoryboard(name: "Onboarding2VC", bundle: .main)
    if let vc = storyboard.instantiateViewController(withIdentifier: "Onboarding2VC") as? Onboarding2VC {
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

