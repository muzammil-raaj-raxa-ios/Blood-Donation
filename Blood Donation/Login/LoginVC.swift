//
//  LoginVC.swift
//  Blood Donation
//
//  Created by Mag isb-10 on 22/03/2024.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      self.navigationItem.hidesBackButton = true
    }

  
  @IBAction func gotoHomeVC(_ sender: UIButton) {
    CustomToast.show(message: "Logged In Successfully!", bgColor: .primaryRed, textColor: .white, labelFont: .boldSystemFont(ofSize: 14), showIn: .bottom, controller: self)
//    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
//      let storyboard = UIStoryboard(name: "LoginVC", bundle: .main)
//      if let vc = storyboard.instantiateViewController(withIdentifier: "LoginVC") as? LoginVC {
//        self.navigationController?.pushViewController(vc, animated: true)
//      }
//    }
  }
  
  @IBAction func gotoRegisterVC(_ sender: UIButton) {
    let storyboard = UIStoryboard(name: "RegisterVC", bundle: .main)
    if let vc = storyboard.instantiateViewController(withIdentifier: "RegisterVC") as? RegisterVC {
      self.navigationController?.pushViewController(vc, animated: true)
    }
  }
}
