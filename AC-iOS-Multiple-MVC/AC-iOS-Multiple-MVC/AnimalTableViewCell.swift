//
//  animalTableViewCell.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Alexander George Legaspi on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {
    
    @IBOutlet weak var animalName: UILabel!
    @IBOutlet weak var animalOrigin: UILabel!
    @IBOutlet weak var animalClassification: UILabel!
    @IBOutlet weak var animalImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
