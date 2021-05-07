//
//  EtcViewController.swift
//  SOPT_WEEK1
//
//  Created by Yi Joon Choi on 2021/04/23.
//

import UIKit

class EtcViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    private var etcList : [etcDataModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setEtcList()
        collectionView.register(etcCollectionViewCell.nib(), forCellWithReuseIdentifier: "etcCollectionViewCell")
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func setEtcList()
        {
            etcList.append(contentsOf: [
                etcDataModel(title: "메일",
                               icon: "messageTabIcon"),
                etcDataModel(title: "캘린더",
                               icon: "messageTabIcon"),
                etcDataModel(title: "서랍",
                               icon: "messageTabIcon"),
                etcDataModel(title: "카카오콘",
                               icon: "messageTabIcon"),
                etcDataModel(title: "메이커스",
                               icon: "messageTabIcon"),
                etcDataModel(title: "선물하기",
                               icon: "messageTabIcon"),
                etcDataModel(title: "이모티콘",
                               icon: "messageTabIcon"),
                etcDataModel(title: "프렌즈",
                               icon: "messageTabIcon"),
                etcDataModel(title: "쇼핑하기",
                               icon: "messageTabIcon"),
                etcDataModel(title: "스타일",
                               icon: "messageTabIcon"),
                etcDataModel(title: "주문하기",
                               icon: "messageTabIcon"),
                etcDataModel(title: "멜론티켓",
                               icon: "messageTabIcon"),
                etcDataModel(title: "게임",
                               icon: "messageTabIcon"),
                etcDataModel(title: "멜론",
                               icon: "messageTabIcon"),
                etcDataModel(title: "헤어샵",
                               icon: "messageTabIcon"),
                etcDataModel(title: "전체서비스",
                               icon: "messageTabIcon")
            ])
        }
}

extension EtcViewController : UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return etcList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let etcCell = collectionView.dequeueReusableCell(withReuseIdentifier: "etcCollectionViewCell",
                                                                 for: indexPath)
                                                                 as? etcCollectionViewCell
                                                                 else {return UICollectionViewCell() }
        
        etcCell.title.text = etcList[indexPath.row].title
        
        return etcCell
    }
    
}
extension EtcViewController : UICollectionViewDelegate
{
    
}
extension EtcViewController : UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = UIScreen.main.bounds.width
        
        let cellWidth = width * (75/375)
        let cellHeight = cellWidth * (205/177)
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }

}

