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
    
    @IBAction func toLogin(_ sender: UIButton) {
        if (email.text != "") && (password.text != "")
        {
            guard let nextVC = self.storyboard?.instantiateViewController(identifier: "LoginViewController") as? LoginViewController else {return}
            nextVC.nameFrom = email.text!
            self.present(nextVC, animated: true, completion: nil)
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

