//
//  MenuOptionCell.swift
//  GOW
//
//  Created by Alexei Emmanuel Martínez Mendoza on 03/12/22.
// SE crea como cocoa class
//

import UIKit

class MenuOptionCell: UITableViewCell {
    
    @IBOutlet var menuOptionImage: UIImageView!
    
    @IBOutlet var menuOptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
