//
//  MesureHelper.swift
//  SpeedTest
//
//  Created by Konstantin Koval on 11/11/14.
//  Copyright (c) 2014 konstanntn Koval. All rights reserved.
//

import Foundation
import QuartzCore

var mesureNumber = 100000000
func iterate(call: () -> Void ) {
  for i in 1...mesureNumber {
    call()
  }
}

//func mesure(title: String!, call: () -> Void) {
//  let startTime = CACurrentMediaTime()
//  call()
//  let endTime = CACurrentMediaTime()
//  if let title = title {
//    print("\(title): ")
//  }
//  println("Time - \(endTime - startTime)")
//}

func iterateAndMesure(title: String!, call: () -> Void ) {
  mesure(title) {
    iterate(call)
  }
}

func iterateAndMesure(call: () -> Void ) {
  iterateAndMesure(nil, call)
}
