//
//  ViewController.swift
//  SpeedTest
//
//  Created by Konstantin Koval on 11/11/14.
//  Copyright (c) 2014 konstanntn Koval. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
     simpleStructureTestPerformace()
    
//    mesureOtherPerformance()
    
    println("COMPLEX")
    complexPerformaceTest()
  }
}