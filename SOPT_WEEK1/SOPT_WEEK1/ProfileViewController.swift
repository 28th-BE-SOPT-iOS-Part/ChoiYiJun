//
//  ProfileViewController.swift
//  SOPT_WEEK1
//
//  Created by Yi Joon Choi on 2021/04/23.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBAction func xmark(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var line: UIView!
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.bluishGrey
        line.backgroundColor = UIColor.coolGrey
        // Do any additional setup after loading the view.
    }
    

}
