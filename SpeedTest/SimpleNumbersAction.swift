//
//  SimpleNumbersAction.swift
//  SpeedTest
//
//  Created by Konstantin Koval on 16/11/14.
//  Copyright (c) 2014 konstanntn Koval. All rights reserved.
//

import Foundation
import QuartzCore

func testSimpleActions() {
  testAddition()
}

func testAddition() {

  println("Pure mesure numbers")
  var x1 = Numbers(x: 0, y: 0)
  let startTime = CACurrentMediaTime()
  
  for i in 1...mesureNumber {
    x1 = x1 + Numbers(x: 1, y: 1)
  }

  let endTime = CACurrentMediaTime()
  println("Time - \(endTime - startTime)")

  

  println("mesure numbers")
  var x0 = Numbers(x: 0, y: 0)
  mesure(nil) {
    for i in 1...mesureNumber {
      x0 = x0 + Numbers(x: 1, y: 1)
    }
  }
  
  println("Iterate and mesure numbers")
  var x = Numbers(x: 0, y: 0)
  iterateAndMesure {
    x = x + Numbers(x: 1, y: 1)
  }
  
  var y = NumbersClass(x: 0, y: 0)
  iterateAndMesure {
    y = y + NumbersClass(x: 0, y: 0)
  }
}