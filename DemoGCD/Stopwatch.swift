//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Larry Heimann on 9/14/15; edited for this app on 11/19/15.
//  Copyright (c) 2015 Larry Heimann. All rights reserved.
//

import Foundation

class Stopwatch {
  
  private var startTime: NSDate?
  private var endTime: NSDate?
  
  var elapsedTime: NSTimeInterval {
    if let startTime = self.startTime {
      if let endTime = self.endTime {
        return endTime.timeIntervalSinceDate(startTime)
      }
      else {
        return 0
      }
    } else {
      return 0
    }
  }
  
  var elapsedTimeAsString: String {
    return String(format: "%02d:%02d.%d",
      Int(elapsedTime / 60), Int(elapsedTime % 60), Int(elapsedTime * 10 % 10)
  )}
  
  func start() {
    startTime = NSDate()
  }
  
  func stop() {
    endTime = NSDate()
  }
  
}