//
//  ComplesMesure.swift
//  SpeedTest
//
//  Created by Konstantin Koval on 15/11/14.
//  Copyright (c) 2014 konstanntn Koval. All rights reserved.
//

import Foundation

func complexPerformaceTest() {
  //mesureNumber = 10000
  allocations()
  collection()
}

func allocations () {
  println("\n Create")
  var i = 0
  iterateAndMesure() {
    var p = Person(firstName: "Jack", lastName: "BRadson", phone: 3456793)
  }
  iterateAndMesure() {
    var p = PersonClass(firstName: "Jack", lastName: "BRadson", phone: 3456793)
  }
}

func collection () {
  println("\n Create collection")

  var originalMesureNumber = mesureNumber
  mesureNumber = 10000000
  var structs = [Person]()
  iterateAndMesure() {
    structs.append(Person(firstName: "Jack", lastName: "BRadson", phone: 3456793))
  }
  var classes = [PersonClass]()
  iterateAndMesure() {
    classes.append(PersonClass(firstName: "Jack", lastName: "BRadson", phone: 3456793))
  }
  mesureNumber = originalMesureNumber
}

//MARK: - Actions
