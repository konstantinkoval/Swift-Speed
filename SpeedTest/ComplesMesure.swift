//
//  ComplesMesure.swift
//  SpeedTest
//
//  Created by Konstantin Koval on 15/11/14.
//  Copyright (c) 2014 konstanntn Koval. All rights reserved.
//

import Foundation

func complexPerformaceTest() {
  mesureNumber = 10000
  allocations()
}

func allocations () {
  println("\n Create")
  var i = 0
  iterateAndMesure() {
//    var people = PeopleClass(name: "Some name \(i)",
//      names: ["Jack \(i)", "Json \(i)", "Randy \(i)", "Simon \(i)"],
//      namesMap: ["Sam \(i)" : "Jeckson \(i)", "Oliver \(i)" : "Tvist \(i)", "Ronald \(i)" : "Mercifeck \(i)"],
//      related: [],
//      nums: [1 + i, 2342 + i, 234521 + i, 1234412 + i, 214124 + i, 21321321 + i, 421321 + i, 421421 + i, 21412 + i, 21312 + i, 421 + i, 12 + i, 23 + i, 214 + i, 123 + i, 421 + i, 421 + i, 421 + i, 421 + i],
//      doubles: [2312 + i, 213214 + i, 12312 + i, 3123124 + i,123124 + i, 31231 + i, 312421 + i, 312312 + i, 412312 + i, 412312 + i, 421312 + i, 412412 + i, 412412 + i, 421421 + i])
//    i++
  }

  iterateAndMesure() {
    var i = 0
    var people = People(name: "Some name \(i)",
      names: ["Jack \(i)", "Json \(i)", "Randy \(i)", "Simon \(i)"],
      namesMap: ["Sam \(i)" : "Jeckson \(i)", "Oliver \(i)" : "Tvist \(i)"],
      related: [],
      nums: [1],
      doubles: [2312])
    i++
  }

}