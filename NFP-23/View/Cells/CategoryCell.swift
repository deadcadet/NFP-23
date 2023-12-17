//
//  CategoryCell.swift
//  NFP-23
//
//  Created by Артур Ганиев on 20.12.2023.
//

import UIKit

class CategoryCell: UITableViewCell {
    @IBOutlet var title: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
