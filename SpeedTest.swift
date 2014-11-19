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

func mesure(title: String!, call: () -> Void) {
  let startTime = CACurrentMediaTime()
  call()
  let endTime = CACurrentMediaTime()
  if let title = title {
    print("\(title): ")
  }
  println("Time - \(endTime - startTime)")
}

// User example

func doSomeWork() {
  
  mesure("Array") {
    for i in 0...10000 {
      var ar = [String]()
      ar.append("New elem \(i)")
    }
  }
  
  mesure("Image") {

    let url = NSURL(string: "http://lorempixel.com/1920/1920/")
    let data = NSData(contentsOfURL:url!)
    let image = UIImage(data:data!)
  }
  
}
