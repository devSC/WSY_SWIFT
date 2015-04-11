//
//  FirstViewController.swift
//  StartSwift
//
//  Created by 袁仕崇 on 14/11/3.
//  Copyright (c) 2014年 wilson. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        println("halloWorld");  
        //let 为常量
        let languageName = "swift";
        let version = 1.0;
        let year = 2014;
        let isAwesome = true;
        let 哈哈 = "你妹";
        println(哈哈);
        //var 为变量
        var swift = "swift";
        
        let allS = languageName + swift;
        println(allS);
        
//        let mathResult = "\(version * year)";
//        println(mathResult);
        var name = ["小名", "haha", "heihei", "nimei"];
        var numberOfFlegs = ["ant" : 6, "你妹" : 8, "啦啦" : 8];
        println(numberOfFlegs);
        println(numberOfFlegs["ant"]);
        println(name[2]);
        for number in 1...5 {
            println("\(number) 3得 \(number * 3)");
        }
//        println("nameArray %@", name);
        name[2] = "嘿嘿";
        println("nameArray is \(name)");
        println(name);
//        name += "蜘蛛";
        numberOfFlegs["啊啦拉"] = 9; //字典添加
        println(numberOfFlegs);
        
        var passibleLegCount :  Int? = numberOfFlegs["我去"];
        if passibleLegCount == nil {
            println("没有我去的数据");
        } else {
//            let legCount = passibleLegCount ! ;//!告诉编译器,这个一定有值
//            printIn("我去的数据是\(legCount)");
        }
        
        var s: String = "world"
        var i: Int = 8
        var world: String = "nimeia"
        s += world
        world = "\(world) is Big world \(s)"
        println(world)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

