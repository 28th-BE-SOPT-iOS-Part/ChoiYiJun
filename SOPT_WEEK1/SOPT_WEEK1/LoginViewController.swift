//
//  LoginViewController.swift
//  SOPT_WEEK1
//
//  Created by Yi Joon Choi on 2021/04/09.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var ok: UIButton!
    
    @IBAction func okDismiss(_ sender: UIButton) {
//        self.dismiss(animated: true, completion: nil)
        performSegue(withIdentifier: "unwindToVC1", sender: self)
//        self.navigationController?.popToRootViewController(animated: true)
//        self.view.window!.rootViewController?.dismiss(animated: false, completion: nil)
    }
    
    var nameFrom : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ok.layer.cornerRadius = 5
        name.text = nameFrom + "님"
    }

}
