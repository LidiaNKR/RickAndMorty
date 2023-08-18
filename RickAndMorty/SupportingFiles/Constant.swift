//
//  Constant.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 18.08.2023.
//

import UIKit

enum Constant {
    //CollectionView
    static let itemsPerRow: CGFloat = 2
    static let sectionInserts: CGFloat = 20
    
    //CollectionCell
    static let cornerRadiusOfCell: CGFloat = 16
    static let cornerRadiusOfImageCell: CGFloat = 10
    static let heightOfImageCell: CGFloat = 140
    static let heightOfCollectionCell: CGFloat = 202
    
    //CollectionCellConstraint
    static let leadingAndTrailingAnchor: CGFloat = 8
    static let topAndButtomAnchor: CGFloat = 16
    
    static let viewBackGroundColor: UIColor = UIColor(
        red: 0.016,
        green: 0.047,
        blue: 0.118,
        alpha: 1
    )
    
    static let cellBackGroundColor: UIColor = UIColor(
        red: 0.15,
        green: 0.163,
        blue: 0.221,
        alpha: 1
    )
}
