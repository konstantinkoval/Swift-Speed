//
//  OtherTest.swift
//  SpeedTest
//
//  Created by Konstantin Koval on 15/11/14.
//  Copyright (c) 2014 konstanntn Koval. All rights reserved.
//

import Foundation
import QuartzCore

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

func test1 (){
//  println("Pure mesure numbers")
//  let startTime = CACurrentMediaTime()
  var x10 = IntClass(0)
  
  for i in 1...10000000 {
    x10 = x10 + IntClass(1)
  }
  
//  let endTime = CACurrentMediaTime()
//  println("Time - \(endTime - startTime)")
}

func test1_1 (){
//  let startTime1 = CACurrentMediaTime()
  var x11 = IntStruct(0)
  
  for i in 1...10000000 {
    x11 = x11 + IntStruct(1)
  }
  
//  let endTime1 = CACurrentMediaTime()
//  println("Time - \(endTime1 - startTime1)")
}

func test2 (){
  
  // Test 1: IntClass
  //mesure(nil) {
    var x = IntClass(0)
    for i in 1...10000000 {
      x = x + IntClass(1)
    }
  //}
}

func test2_1 (){
  //mesure(nil) {
    // Test 2: IntStruct
    var y = IntStruct(0)
    for i in 1...10000000 {
      y = y + IntStruct(1)
    }
  //}
}


func mesureOtherPerformance() {



  
  

 
  
  
  println("My iteration")
   var x = IntClass(0)
  iterateAndMesure {
     x = x + IntClass(1)
  }
  
  var y = IntStruct(0)
  iterateAndMesure {
    y = y + IntStruct(1)
  }
  
  mesureNumber = 10000000
  println("My iteration smaller")
  var x1 = IntClass(0)
  iterateAndMesure {
    x1 = x1 + IntClass(1)
  }
  
  var y1 = IntStruct(0)
  iterateAndMesure {
    y1 = y1 + IntStruct(1)
  }
}