//
//  etcCollectionViewCell.swift
//  SOPT_WEEK1
//
//  Created by Yi Joon Choi on 2021/05/07.
//

import UIKit

class etcCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    static func nib() -> UINib{
        return UINib(nibName: "etcCollectionViewCell", bundle: nil)
    }
}
