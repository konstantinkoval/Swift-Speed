//
//  CompledStructure.swift
//  SpeedTest
//
//  Created by Konstantin Koval on 15/11/14.
//  Copyright (c) 2014 konstanntn Koval. All rights reserved.
//

import Foundation

struct People {
  
  var name: String
  var names: [String]
  var namesMap: [String : String]
  init (names: [String]) {
    self.name = names.first!
    self.names = names
    self.namesMap = Dictionary
  }
}


class PeopleClass {
  
  var name: String
  var names: [String]
  var namesMap: [String : String]
  var related: [PeopleClass]
  var nums: [Int]
  var doubles: [Double]
  
  init (name: String, names: [String], namesMap: [String : String], related: [PeopleClass], nums: [Int], doubles: [Double]) {
    
    self.name = name
    self.names = names
    self.namesMap = namesMap
    self.related = related
    self.nums = nums
    self.doubles = doubles
  }
}