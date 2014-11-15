//
//  StructVsClasses.swift
//  SpeedTest
//
//  Created by Konstantin Koval on 11/11/14.
//  Copyright (c) 2014 konstanntn Koval. All rights reserved.
//

import Foundation
import XCTest

let number = 100000
class StructVsClasses: XCTestCase {
  
  func iterateAndMesure(call: () -> Void ) {
    self.measureBlock() {
      for i in 1...number {
        call()
      }
    }
  }
  
  func testStructCreationPerformance() {
    self.iterateAndMesure() {
      var s = Numbers(x:0, y:0)
    }
  }
  
  func testClassCreationPerformance() {
    self.iterateAndMesure() {
      var s = NumbersClass(x:0, y:0)
      
    }
  }
  
  func testStructAssignPerformance() {
    self.iterateAndMesure() {
      var a = Numbers(x: 0, y: 0)
      var b = a
      var c = b
      var d = c
    }
  }

  func testClassAssignPerformance() {
    self.iterateAndMesure() {
      var a = NumbersClass(x: 0, y: 0)
      var b = a
      var c = b
      var d = c
    }
  }

}
