//
//  SecondCell.swift
//  Table
//
//  Created by Student on 28/10/2019.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class SecondCell: UITableViewCell {

    @IBOutlet weak var infoLBL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureWithData(info: String){
        infoLBL?.text = info
    }

}
