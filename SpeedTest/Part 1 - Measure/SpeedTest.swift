//
//  SpeedTest.swift
//  SpeedTest
//
//  Created by Konstantin Koval on 19/11/14.
//  Copyright (c) 2014 konstanntn Koval. All rights reserved.
//

import Foundation
import QuartzCore
import UIKit
import 

// User example

func doSomeWork() {

  measure("Array") {
    for i in 0...10000 {
      var ar = [String]()
      ar.append("New elem \(i)")
    }
  }
  
  measure("Image") {
    let url = NSURL(string: "http://lorempixel.com/1920/1920/")
    let image = UIImage(data:NSData(contentsOfURL:url!)!)
  }
  
}
