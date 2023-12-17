//
//  ExerciseCell.swift
//  NFP-23
//
//  Created by Артур Ганиев on 21.12.2023.
//

import UIKit

class ExerciseCell: UITableViewCell {
    
    @IBOutlet var exerciseNumber: UILabel!
    @IBOutlet var title: UILabel!
    @IBOutlet var result: UITextField!
    @IBOutlet var score: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
