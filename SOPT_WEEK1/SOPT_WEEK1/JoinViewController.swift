//
//  JoinViewController.swift
//  SOPT_WEEK1
//
//  Created by Yi Joon Choi on 2021/04/09.
//

import UIKit

class JoinViewController: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var pwTF: UITextField!
    @IBOutlet weak var pwCorrectTF: UITextField!
    
    @IBAction func toLogin(_ sender: UIButton) {
        if (emailTF.text != "") && (pwTF.text != "") && (pwCorrectTF.text != "")
        {
            let input = JoinRequest(email: emailTF.text!, password: pwTF.text!, sex: "0", nickname: "sopt", phone: "0", birth: "0")
            JoinDataManager.join(input,viewController: self)
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let border = CALayer()
        let border2 = CALayer()
        let border3 = CALayer()

        let width = CGFloat(1.0)

        border.borderColor = UIColor.lightGray.cgColor
        border2.borderColor = UIColor.lightGray.cgColor
        border3.borderColor = UIColor.lightGray.cgColor

        border.frame = CGRect(x: 0, y: emailTF.frame.size.height - width, width:  emailTF.frame.size.width, height: emailTF.frame.size.height)
        border2.frame = CGRect(x: 0, y: pwTF.frame.size.height - width, width:  pwTF.frame.size.width, height: pwTF.frame.size.height)
        border3.frame = CGRect(x: 0, y: pwCorrectTF.frame.size.height - width, width:  pwCorrectTF.frame.size.width, height: pwCorrectTF.frame.size.height)
        
        border.borderWidth = width
        border2.borderWidth = width
        border3.borderWidth = width

        emailTF.layer.addSublayer(border)
        pwTF.layer.addSublayer(border2)
        pwCorrectTF.layer.addSublayer(border3)
        
        emailTF.layer.masksToBounds = true
        pwTF.layer.masksToBounds = true
        pwCorrectTF.layer.masksToBounds = true
    }
    

}

extension JoinViewController {
    func didSuccessSignIn(result: JoinResponse) {


        let nextVC = self.storyboard?.instantiateViewController(identifier: "MainTabBar") as! UITabBarController
    
        
        self.makeAlert(title: "알림", message: result.message, okAction: {_ in     self.navigationController?.pushViewController(nextVC, animated: true)})
    }
    
    func failedToRequest(message: String) {
        self.makeAlert(title: "알림", message: message)
    }
    
}
