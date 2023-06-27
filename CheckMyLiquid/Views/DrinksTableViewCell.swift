//
//  DrinksTableViewCell.swift
//  CheckMyLiquid
//
//  Created by Andrew Indayang on 10/06/23.
//

import UIKit

class DrinksTableViewCell: UITableViewCell {

    @IBOutlet weak var cellBackgroundView:UIView!
    @IBOutlet weak var drinkImage:UIImageView!
    @IBOutlet weak var drink:UILabel!
    @IBOutlet weak var amount:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cellBackgroundView.layer.backgroundColor = UIColor.white.cgColor;
        cellBackgroundView.layer.cornerRadius = 15;
        
        //        shadow
        cellBackgroundView.layer.shadowColor = UIColor(red: 0.403, green: 0.394, blue: 0.867, alpha: 0.1 ).cgColor
        cellBackgroundView.layer.shadowRadius = 1
        cellBackgroundView.layer.shadowOpacity = 1
        cellBackgroundView.layer.shadowOffset = CGSize(width: 1, height: 7)
        
    }
}
