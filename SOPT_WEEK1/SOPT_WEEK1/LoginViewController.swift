//
//  LoginViewController.swift
//  SOPT_WEEK1
//
//  Created by Yi Joon Choi on 2021/04/09.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var profilePic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        profilePic.isUserInteractionEnabled = true
        profilePic.addGestureRecognizer(tapGestureRecognizer)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "ProfileViewController") as? ProfileViewController else {return}
        nextVC.modalPresentationStyle = .overFullScreen
        self.present(nextVC, animated: true, completion: nil)
    }

}
