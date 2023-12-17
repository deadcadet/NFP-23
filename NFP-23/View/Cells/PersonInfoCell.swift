//
//  PersonInfoCell.swift
//  NFP-23
//
//  Created by Артур Ганиев on 21.12.2023.
//

import UIKit

class PersonInfoCell: UITableViewCell {
    
    @IBOutlet var gender: UITextField!
    @IBOutlet var age: UITextField!
    @IBOutlet var weight: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
