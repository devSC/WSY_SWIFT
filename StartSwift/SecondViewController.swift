//
//  SecondViewController.swift
//  StartSwift
//
//  Created by 袁仕崇 on 14/11/3.
//  Copyright (c) 2014年 wilson. All rights reserved.
//

import UIKit

@IBDesignable
class MyCustomView: UIView { //////////
//    @IBInspectable var textColor: UIColor
//    @IBInspectable var iconHeight: CGFloat = 0.0
}
let FADE_ANIMATION_DURATION = 0.35 //代替宏

class SecondViewController: UIViewController {

    @IBOutlet weak var topButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        NSLocalizedString(<#key: String#>, tableName: <#String?#>, bundle: <#NSBundle#>, value: <#String#>, comment: <#String#>)
        
        let foundationArray = [AnyObject]()
        if let swiftArray = foundationArray as? [String]{
            if let downCoatedSwiftArray = foundationArray as? [UIView] {
                
            }
        
        }else {
        
        }
        
        var writeError: NSError?
        var myString = "哈哈,这样真的好吗?"
        var path = "lalala"
        let written = myString.writeToFile(path, atomically: false, encoding: NSUTF8StringEncoding, error: &writeError)
        println()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func topButtonAction(sender: UIButton) {
        println("哇咔咔")
    }
    
}

