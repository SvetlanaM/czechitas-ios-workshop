//
//  CourseTableViewController.swift
//  CzechitasCourseApp
//
//  Created by Svetlana Margetová on 04.05.16.
//  Copyright © 2016 Svetlana Margetová. All rights reserved.
//

import UIKit

class CourseTableViewController: UITableViewController, UIAlertViewDelegate {
    
    var courses = [Course]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let course1 = Course(courseName: "iOS workshop", courseDuration: 5, courseImage: "https://trello-attachments.s3.amazonaws.com/5585ac604e4d95cb6a64c0a7/200x200/2269c46a43741bc6d4c1900338c66537/swift-logo.png")
        let course2 = Course(courseName: "Python course", courseDuration: 12, courseImage: "https://trello-attachments.s3.amazonaws.com/5585ac604e4d95cb6a64c0a7/200x200/2149a2b5ce3509f511f976ba2a3a60a8/python-logo.png")
        
        
        courses.append(course1)
        courses.append(course2)
    
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return courses.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("courseCell", forIndexPath: indexPath) as! CourseTableViewCell

        cell.courseName.text = courses[indexPath.row].courseName
        let url = NSURL(string : courses[indexPath.row].courseImage)
        let imageData = NSData(contentsOfURL: url!)
        let image = UIImage(data : imageData!)
        
        let temp = UIImageView(image : image!)
        temp.frame = CGRectMake(0, 0, 80, 90)
        temp.contentMode = UIViewContentMode.ScaleAspectFit
        cell.courseImage.addSubview(temp)
        print (cell.courseImage)
        
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
        cell.courseStartDate.text = String(dateFormatter.stringFromDate(courses[indexPath.row].courseStartDate))
        cell.courseDuration.text = "\(String(courses[indexPath.row].courseDuration)) weeks"

        return cell
    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
