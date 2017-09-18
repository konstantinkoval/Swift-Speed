//
//  Numbers.swift
//  SpeedTest
//
//  Created by Konstantin Koval on 11/11/14.
//  Copyright (c) 2014 konstanntn Koval. All rights reserved.
//

import Foundation

struct Numbers {
  var x: Int
  var y: Int

  init(x: Int, y: Int) {
    self.x = x;
    self.y = y;
  }
  
  func emptyCall() {
  }
}

func + (x: Numbers, y: Numbers) -> Numbers {
  return Numbers(x: x.x + y.x, y: x.y + y.y)
}

class NumbersClass {
  var x: Int
  var y: Int
  
  init(x: Int, y: Int) {
    self.x = x;
    self.y = y;
  }
  
  func emptyCall() {
  }
}

func + (x: NumbersClass, y: NumbersClass) -> NumbersClass {
  return NumbersClass(x: x.x + y.x, y: x.y + y.y)
}
