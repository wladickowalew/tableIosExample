//
//  FirstCell.swift
//  Table
//
//  Created by Student on 22/10/2019.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class FirstCell: UITableViewCell {

    @IBOutlet var dexcriptionTV: UITextView!
    @IBOutlet var titleLabel: UILabel!
    

    
    func setDescription(desc: String) {
        dexcriptionTV.text = desc
    }
    
    func setTitle(desc: String) {
        titleLabel.text = desc
    }
    
    func configureWithData(desc: String!, title: String!){
        dexcriptionTV?.text = desc
        titleLabel?.text = title
        var frame  = self.frame
        frame.size.height = 500
        self.frame = frame
        print("Stop")
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
