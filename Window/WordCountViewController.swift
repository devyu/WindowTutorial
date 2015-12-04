//
//  WordCountViewController.swift
//  Window
//
//  Created by mac on 12/4/15.
//  Copyright © 2015 JY. All rights reserved.
//

import Cocoa

class WordCountViewController: NSViewController {

  @IBOutlet weak var wordCount: NSTextField!
  @IBOutlet weak var paragraphCount: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
  
  
  @IBAction func dismissWordCountWindow(sender: NSButton) {
    let application = NSApplication.sharedApplication()
    application.stopModal()
  }
}
