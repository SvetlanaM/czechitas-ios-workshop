//
//  course.swift
//  CzechitasCourseApp
//
//  Created by Svetlana Margetová on 04.05.16.
//  Copyright © 2016 Svetlana Margetová. All rights reserved.
//

import Foundation

class Course {
    var courseName : String
    var courseStartDate : NSDate
    var courseDuration: Int
    var is_available = true
    var courseCapacity : Int
    var courseImage : String
    
    init(courseName : String, courseDuration : Int, courseImage : String) {
        self.courseName = courseName
        self.courseStartDate = NSDate()
        self.courseDuration = courseDuration
        self.courseCapacity = 10
        self.courseImage = courseImage
    }
    
    
    
    
    
    
}