//
//  ViewController.swift
//  DemoGCD
//
//  Created by Larry Heimann on 11/19/15.
//  Copyright (c) 2015 Larry Heimann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var jediMaster1: UILabel!
  @IBOutlet weak var jediMaster2: UILabel!
  @IBOutlet weak var jediMaster3: UILabel!
  @IBOutlet weak var sithLord1: UILabel!
  @IBOutlet weak var sithLord2: UILabel!
  @IBOutlet weak var sithLord3: UILabel!
  @IBOutlet weak var elapsedTimeLabel: UILabel!
  let stopwatch = Stopwatch()
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  func updateJedi() {
    sleep(3)
    jediMaster1.text = "Master Yoda"
    jediMaster2.text = "Obi Wan Kenobi"
    jediMaster3.text = "Shaak Ti"
  }
  
  func updateSith() {
    sithLord1.text = "Darth Sidious"
    sithLord2.text = "Darth Vader"
    sithLord3.text = "Darth Maul"
  }
  
  @IBAction func updateLists() {
    stopwatch.start()
    
    dispatch_async(dispatch_get_main_queue(), {
      self.updateJedi()
      self.stopTimer()
    })
    
//    dispatch_async(dispatch_get_global_queue(QOS_CLASS_BACKGROUND, 0), {
//      self.updateJedi()
//      self.stopTimer()
//    })
    
//    dispatch_async(dispatch_get_global_queue(QOS_CLASS_UTILITY, 0), {
//      self.updateJedi()
//      self.stopTimer()
//    })
    
//    dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0), {
//      self.updateJedi()
//      self.stopTimer()
//    })
    
//    dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INTERACTIVE, 0), {
//      self.updateJedi()
//      self.stopTimer()
//    })
    
    updateSith()
  }
  
  func stopTimer() {
    stopwatch.stop()
    elapsedTimeLabel.text = stopwatch.elapsedTimeAsString
  }

}

