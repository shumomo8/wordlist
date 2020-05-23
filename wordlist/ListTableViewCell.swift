//
//  ListTableViewCell.swift
//  wordlist
//
//  Created by Shu Fujita on 2020/05/23.
//  Copyright © 2020 Fujita shu. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    @IBOutlet var englishLabel: UILabel!
    @IBOutlet var japaneseLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
