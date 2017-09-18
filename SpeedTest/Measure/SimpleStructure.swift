//
//  SimpleStructure.swift
//  SpeedTest
//
//  Created by Konstantin Koval on 15/11/14.
//  Copyright (c) 2014 konstanntn Koval. All rights reserved.
//

import Foundation

func simpleStructureTestPerformace() {
  create()
//  assign()
//  modify()
//  passToFunction()
//  passToFunctionAndAndUse()
//  passToFunctionAndModify()
//  passToFunctionAndModifyAndReturn()
//  methodCall()
}

//MARK: - Mesure Performance
func create() {
  println("\n Create")
  iterateAndMesure() {
    Numbers(x: 0, y: 0)
    return
  }
  
  iterateAndMesure() {
    NumbersClass(x: 0, y: 0)
    return
  }
}

func assign() {
  println("\n Assign")
  iterateAndMesure() {
    var a = Numbers(x: 0, y: 0)
    var b = a
    var c = b
    var d = c
  }
  
  iterateAndMesure() {
    var a = NumbersClass(x: 0, y: 0)
    var b = a
    var c = b
    var d = c
  }
}

func modify() {
  println("\n Modify")
  
  iterateAndMesure() {
    var a = Numbers(x: 0, y: 0)
    var b = a
    b.x = 1
    var c = b
    c.x = 2
    var d = c
    d.x = 3
  }
  
  iterateAndMesure() {
    var a = NumbersClass(x: 0, y: 0)
    var b = a
    b.x = 1
    var c = b
    c.x = 2
    var d = c
    d.x = 3
  }
}

func passToFunction() {
  println("\n Pass to Function")
  
  iterateAndMesure() {
    var num = Numbers(x: 0, y: 0)
    doNothing(num)
  }
  
  iterateAndMesure() {
    var num = NumbersClass(x: 0, y: 0)
    doNothingClass(num)
  }
}

func passToFunctionAndAndUse() {
  println("\n Function - Pass And Use")
  
  iterateAndMesure() {
    var num = Numbers(x: 0, y: 0)
    computeSum(num)
  }
  
  iterateAndMesure() {
    var num = NumbersClass(x: 0, y: 0)
    computeSumClass(num)
  }
}

func passToFunctionAndModify() {
  println("\n Function - Pass And Modify")
  
  iterateAndMesure() {
    var num = Numbers(x: 0, y: 0)
    computeSum(num)
  }
  
  iterateAndMesure() {
    var num = NumbersClass(x: 0, y: 0)
    computeSumClass(num)
  }
}

func passToFunctionAndModifyAndReturn() {
  println("\n Function - Modify and Return")
  
  iterateAndMesure() {
    var num = Numbers(x: 0, y: 0)
    computeMultiply(num)
  }
  
  iterateAndMesure() {
    var num = NumbersClass(x: 0, y: 0)
    computeMultiplyClass(num)
  }
}

func methodCall() {
  println("\n Method call")
  
  iterateAndMesure() {
    var num = Numbers(x: 0, y: 0)
  }
  
  iterateAndMesure() {
    var num = NumbersClass(x: 0, y: 0)
    num.emptyCall()
  }
}

//  MARK: - Helpers
func doNothing(par: Numbers) {
}

func doNothingClass(par: NumbersClass) {
}

func computeSum(num: Numbers) {
  var sum = num.x + num.y
}

func computeSumClass(num: NumbersClass) {
  var sum = num.x + num.y
}

func updateSum(var num: Numbers) {
  var sum = num.x + num.y
  num.y = 0
}

func updateSumClass(num: NumbersClass) {
  var sum = num.x + num.y
  num.y = sum
}

func computeMultiply(num: Numbers) -> Numbers {
  var sum = num.x + num.y
  var res = num
  res.y = sum
  return res
}

func computeMultiplyClass(num: NumbersClass) -> NumbersClass {
  var sum = num.x + num.y
  num.y = sum
  return num
}


