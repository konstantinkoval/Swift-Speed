//
//  Assembly.swift
//  SpeedTest
//
//  Created by Konstantin Koval on 21/11/14.
//  Copyright (c) 2014 konstanntn Koval. All rights reserved.
//

func test() {

  var x = 10
  var y = 10
  var c = x + y
  
}

test()


//func measure(title: String!, call: () -> Void) {
//  let startTime = CACurrentMediaTime()
//  call()
//  let endTime = CACurrentMediaTime()
//  if let title = title {
//    print("\(title): ")
//  }
//  println("Time - \(endTime - startTime)")
//}
//
//
//struct IntStruct {
//  var value: Int
//  init(_ val: Int) { self.value = val }
//}
//
//
//func arraysSpeed () {
//  measure("Array") {
//    for i in 0...1 {
//      IntStruct(1)
//    }
//  }
//  
//  measure("Array") {
//    for i in 0...100000000000 {
//      IntStruct(1)
//    }
//  }
//}
//
//arraysSpeed()