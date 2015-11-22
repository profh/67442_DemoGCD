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
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    updateLists()
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
    updateJedi()
    updateSith()
  }

}

