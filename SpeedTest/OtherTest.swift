//
//  OtherTest.swift
//  SpeedTest
//
//  Created by Konstantin Koval on 15/11/14.
//  Copyright (c) 2014 konstanntn Koval. All rights reserved.
//

import Foundation

class IntClass {
  var value: Int
  init(_ val: Int) { self.value = val }
}

struct IntStruct {
  var value: Int
  init(_ val: Int) { self.value = val }
}


func + (x: IntClass, y: IntClass) -> IntClass {
  return IntClass(x.value + y.value)
}

func + (x: IntStruct, y: IntStruct) -> IntStruct {
  return IntStruct(x.value + y.value)
}

func mesureOtherPerformance() {
  // Test 1: IntClass
  mesure(nil) {
    var x = IntClass(0)
    for i in 1...10000000 {
      x = x + IntClass(1)
    }
  }
  
  mesure(nil) {
    // Test 2: IntStruct
    var y = IntStruct(0)
    for i in 1...10000000 {
      y = y + IntStruct(1)
    }
  }
  
}