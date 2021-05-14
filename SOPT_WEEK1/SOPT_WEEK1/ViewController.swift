//
//  ViewController.swift
//  SOPT_WEEK1
//
//  Created by Yi Joon Choi on 2021/04/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var login: UIButton!
    
    @IBAction func unwindVC1 (segue : UIStoryboardSegue) {}
    
    @IBAction func toLogin(_ sender: UIButton) {
        if (email.text != "") && (password.text != "")
        {
            let input = LoginRequest(email: email.text!, password: password.text!)
            LoginDataManager.login(input,viewController: self)

        }
    }
    
    @IBAction func toJoin(_ sender: UIButton) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "JoinViewController") as? JoinViewController else {return}
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let border = CALayer()
        let border2 = CALayer()

        let width = CGFloat(1.0)

        border.borderColor = UIColor.lightGray.cgColor
        border2.borderColor = UIColor.lightGray.cgColor

        border.frame = CGRect(x: 0, y: email.frame.size.height - width, width:  email.frame.size.width, height: email.frame.size.height)
        border2.frame = CGRect(x: 0, y: password.frame.size.height - width, width:  password.frame.size.width, height: password.frame.size.height)
    
        border.borderWidth = width
        border2.borderWidth = width

        email.layer.addSublayer(border)
        password.layer.addSublayer(border2)

        email.layer.masksToBounds = true
        password.layer.masksToBounds = true

        
    }


}

extension ViewController {
    func didSuccessSignIn(result: LoginResponse) {
        let nextVC = self.storyboard?.instantiateViewController(identifier: "MainTabBar") as! UITabBarController
//        self.navigationController?.pushViewController(nextVC, animated: true)
        
        self.makeAlert(title: "알림", message: result.message, okAction: {_ in     self.navigationController?.pushViewController(nextVC, animated: true)})
        
    }
    
    func failedToRequest(message: String) {
        self.makeAlert(title: "알림", message: message)
    }
    
}
