//
//  FriendTableViewCell.swift
//  SOPT_WEEK1
//
//  Created by Yi Joon Choi on 2021/05/07.
//

import UIKit

class FriendTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var state: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    static func nib() -> UINib{
        return UINib(nibName: "FriendTableViewCell", bundle: nil)
    }
    
}
