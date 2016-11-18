//
//  MyCustomTableViewCell.swift
//  TableView
//
//  Created by Sam Meech-Ward on 2016-11-17.
//  Copyright © 2016 Sam Meech-Ward. All rights reserved.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {

    @IBOutlet weak var myCustomImageView: UIImageView!
    
    @IBOutlet weak var myCustomLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
