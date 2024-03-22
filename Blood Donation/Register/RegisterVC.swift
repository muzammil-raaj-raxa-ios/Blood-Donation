//
//  RegisterVC.swift
//  Blood Donation
//
//  Created by Mag isb-10 on 22/03/2024.
//

import UIKit

class RegisterVC: UIViewController {
  
  @IBOutlet weak var profileImage: UIImageView!
  @IBOutlet weak var bloodGroupTF: UITextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
      self.navigationItem.hidesBackButton = true
      
      profileImage.layer.cornerRadius = profileImage.frame.size.width / 2
      profileImage.clipsToBounds = true
      
      bloodGroupTF.isUserInteractionEnabled = true
      pickerUI()
    }
  
  // create UIPickerView
  
  func pickerUI() {
    let picker = UIPickerView()
    picker.delegate = self
    picker.dataSource = self
    bloodGroupTF.inputView = picker
    picker.selectRow(0, inComponent: 0, animated: true)
  }
  
  func getBloodGroup() -> [String] {
    return bloodGroups
  }

  @IBAction func selectProfileImg(_ sender: UIButton) {
    let vc = UIImagePickerController()
    vc.sourceType = .photoLibrary
    vc.delegate = self
    vc.allowsEditing = true
    present(vc, animated: true)
  }
  
  @IBAction func gotoLoginVC(_ sender: UIButton) {
    CustomToast.show(message: "Registered Successfully!", bgColor: .primaryRed, textColor: .white, labelFont: .boldSystemFont(ofSize: 14), showIn: .bottom, controller: self)
    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
      let storyboard = UIStoryboard(name: "LoginVC", bundle: .main)
      if let vc = storyboard.instantiateViewController(withIdentifier: "LoginVC") as? LoginVC {
        self.navigationController?.pushViewController(vc, animated: true)
      }
    }
  }
  
}

extension RegisterVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
    
    if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
      profileImage.image = image
    }
    
    picker.dismiss(animated: true, completion: nil)
  }
  func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
    picker.dismiss(animated: true, completion: nil)
  }
}


extension RegisterVC: UIPickerViewDelegate, UIPickerViewDataSource {
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return bloodGroups.count
  }
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    let bloodGroup = getBloodGroup()[row]
    return bloodGroup
  }
  func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    let bloodGroup = getBloodGroup()[row]
    bloodGroupTF.text = "\(bloodGroup)"
  }
}
