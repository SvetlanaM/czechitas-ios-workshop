//
//  CourseTableViewCell.swift
//  CzechitasCourseApp
//
//  Created by Svetlana Margetová on 04.05.16.
//  Copyright © 2016 Svetlana Margetová. All rights reserved.
//

import UIKit

class CourseTableViewCell: UITableViewCell {

    @IBOutlet weak var courseImage: UIImageView!
    
    @IBOutlet weak var courseName: UILabel!
    
    @IBOutlet weak var courseStartDate: UILabel!
    
    
    @IBOutlet weak var courseDuration: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
