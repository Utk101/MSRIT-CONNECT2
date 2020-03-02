//
//  TableViewCell.swift
//  MSRITCONNECT
//
//  Created by Apple on 24/02/20.
//  Copyright © 2020 KARTLA. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblcode: UILabel!
    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var ason: UILabel!
    @IBOutlet weak var percent: UILabel!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
