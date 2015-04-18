//
//  FirstViewController.swift
//  StartSwift
//
//  Created by 袁仕崇 on 14/11/3.
//  Copyright (c) 2014年 wilson. All rights reserved.
//

import UIKit
extension UIBezierPath {
    convenience init(triangleSideLength: Float, origin: CGPoint) {
        self.init()
        let squareRoot = Float(sqrt(3.0))
        let altitude = (squareRoot * triangleSideLength) / 2
        moveToPoint(origin)
//        addLineToPoint(CGPoint(x: triangleSideLength, y: origin.x))
//        addLineToPoint(CGPoint (x: triangleSideLength / 2, y: altitude))
//        addLineToPoint(CGPoint (x: triangleSideLength, y: origin.x))
        closePath()
    }
}


extension CGRect {
    var area: CGFloat {
        return width * height
    }
}

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let myButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        let mySelector: Selector = "tappedButton:"
        myButton.addTarget(self, action: mySelector, forControlEvents: UIControlEvents.TouchUpInside)
        
        
    }


    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
//        fatalError("init(coder:) has not been implemented")
    }

    func tappedButton(sender: UIButton!) {
        println("tappedButton")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        println("halloWorld");  
        //let 为常量
//        let languageName = "swift";
//        let version = 1.0;
//        let year = 2014;
//        let isAwesome = true;
//        let 哈哈 = "你妹";
//        println(哈哈);
//        //var 为变量
//        var swift = "swift";
//        
//        let allS = languageName + swift;
//        println(allS);
//        
////        let mathResult = "\(version * year)";
////        println(mathResult);
//        var name = ["小名", "haha", "heihei", "nimei"];
//        var numberOfFlegs = ["ant" : 6, "你妹" : 8, "啦啦" : 8];
//        println(numberOfFlegs);
//        println(numberOfFlegs["ant"]);
//        println(name[2]);
//        for number in 1...5 {
//            println("\(number) 3得 \(number * 3)");
//        }
////        println("nameArray %@", name);
//        name[2] = "嘿嘿";
//        println("nameArray is \(name)");
//        println(name);
////        name += "蜘蛛";
//        numberOfFlegs["啊啦拉"] = 9; //字典添加
//        println(numberOfFlegs);
//        
//        var passibleLegCount :  Int? = numberOfFlegs["我去"];
//        if passibleLegCount == nil {
//            println("没有我去的数据");
//        } else {
////            let legCount = passibleLegCount ! ;//!告诉编译器,这个一定有值
////            printIn("我去的数据是\(legCount)");
//        }
//        
//        var s: String = "world"
//        var i: Int = 8
//        var world: String = "nimeia"
//        s += world
//        world = "\(world) is Big world \(s)"
//        println(world)

        let myTableView = UITableView(frame: self.view.frame, style: .Plain)
        myTableView.tableFooterView = UIView(frame: CGRectZero)
        myTableView.delegate = self;
        myTableView.dataSource = self;
        self.view .addSubview(myTableView)
//
//        var myObject: AnyObject = UITableViewCell()
////        let myLength = myObject.length?
//        let myChar = myObject.characterAtIndex?(5)
//        
//        let userDefault = NSUserDefaults.standardUserDefaults()
//        let lastRefreshData: AnyObject? = userDefault.objectForKey("lastRefreshDate")
//        if let date = lastRefreshData as? NSDate {
//            date
//        }
//        
//        let myTextField = UITextField(frame: CGRectMake(200, 200, 200, 200))
//        myTextField.textColor = UIColor.yellowColor()
//        myTextField.text = "Hello ni hao"
//        if myTextField.editing {
////            myTextField.editing = false
//        }
        
//        let rect = CGRect(x: 0.0, y: 0.0, width: 10.0, height: 50)
//        let area = rect.area
//        println(area)
//        
//        self.view.addSubview(myButton)
        
        
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        cell.textLabel?.text = "这是一个测试,Cell: \(indexPath.row)"
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

