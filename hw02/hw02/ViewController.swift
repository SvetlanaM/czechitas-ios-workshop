//
//  ViewController.swift
//  hw02
//
//  Created by Svetlana Margetová on 26.04.16.
//  Copyright © 2016 Svetlana Margetová. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var box1: UIView!
    @IBOutlet weak var box2: UIView!
    @IBOutlet weak var box3: UIView!
    @IBOutlet weak var box4: UIView!
    @IBOutlet weak var boxMain: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createDict()
        
    }
    
    var boxDict : [Int : UIView] = [Int : UIView]()
    
    func createDict() {
        boxDict[1] = box1
        boxDict[2] = box2
        boxDict[3] = box3
        boxDict[4] = box4
    }
    
    func setBlackColor() {
        for key in boxDict.keys {
            if key % 2 == 1 {
                boxDict[key]!.backgroundColor = .blackColor()
                boxMain.backgroundColor = .blackColor()
            }
        }
    }
    
    func setOrangeColor() {
        for key in boxDict.keys {
            if key % 2 == 0 {
                boxDict[key]!.backgroundColor = .orangeColor()
                boxMain.backgroundColor = .orangeColor()
            }
        }
    }
    
    @IBAction func btn1(sender: UIButton) {
        setBlackColor()
    }
    
    @IBAction func btn2(sender: UIButton) {
        setOrangeColor()
        
    }
    
    @IBAction func btn3(sender: UIButton) {
        boxMain.backgroundColor = .greenColor()
    }


}

