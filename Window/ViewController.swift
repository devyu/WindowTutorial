//
//  ViewController.swift
//  Window
//
//  Created by mac on 12/3/15.
//  Copyright © 2015 JY. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
  @IBOutlet var text: NSTextView!

  override func viewDidLoad() {
    super.viewDidLoad()

    // 显示或者隐藏标尺
    text.toggleRuler(nil)
    
  }
  
  
  
  @IBAction func showWordCountWindow(sender: AnyObject) {
    
    // 1. instantiate the word count wimdow controller, using the storyboard ID you specified before.
    let storyboard = NSStoryboard(name: "Main", bundle: nil)
    let wordCountWindowController = storyboard.instantiateControllerWithIdentifier("WordCountWindowController") as! NSWindowController
    
    if let wordCountWindow = wordCountWindowController.window, textStorage = text.textStorage {
      
      // 2. set the values retrieved from the text view in the word count window count outlets
      let wordCountViewController = wordCountWindow.contentViewController as! WordCountViewController
      wordCountViewController.wordCount.stringValue = "\(textStorage.words.count)"
      wordCountViewController.paragraphCount.stringValue = "\(textStorage.paragraphs.count)"
      
      // 3. show the word count window modally
      let application = NSApplication.sharedApplication()
      application.runModalForWindow(wordCountWindow)
    }
  }
  
  
  

  override var representedObject: AnyObject? {
    didSet {
    // Update the view, if already loaded.
    }
  }


}

