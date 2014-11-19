//
//  CompledStructure.swift
//  SpeedTest
//
//  Created by Konstantin Koval on 15/11/14.
//  Copyright (c) 2014 konstanntn Koval. All rights reserved.
//

import Foundation

struct Person {
  
  var firstName: String
  var lastName: String
  var phone: Int
  
  init (firstName: String, lastName: String, phone: Int) {
    self.firstName = firstName
    self.lastName = lastName
    self.phone = phone
  }
}


class PersonClass {
  
  var firstName: String
  var lastName: String
  var phone: Int
  
  init (firstName: String, lastName: String, phone: Int) {
    self.firstName = firstName
    self.lastName = lastName
    self.phone = phone
  }
}