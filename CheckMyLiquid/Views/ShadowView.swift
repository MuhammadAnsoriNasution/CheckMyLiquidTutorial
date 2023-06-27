//
//  ShadowView.swift
//  CheckMyLiquid
//
//  Created by Andrew Indayang on 03/06/23.
//

import UIKit

class ShadowView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.backgroundColor = UIColor.white.cgColor;
        layer.cornerRadius = 15;
        
//        shadow
        layer.shadowColor = UIColor(red: 0.403, green: 0.394, blue: 0.867, alpha: 0.1 ).cgColor
        layer.shadowRadius = 1
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize(width: 1, height: 7)
    }

}
