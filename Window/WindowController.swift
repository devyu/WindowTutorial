//
//  WindowController.swift
//  Window
//
//  Created by mac on 12/3/15.
//  Copyright © 2015 JY. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {

  
    required init?(coder: NSCoder) {
      super.init(coder: coder)
      
      shouldCascadeWindows = true // 新建 window 的时候，默认空出 titlebar 的高度，形成瀑布流效果
    }
  
    override func windowDidLoad() {
        super.windowDidLoad()
      
      // NSWindowController 拥有 window 属性，NSWindow 拥有 screen 属性
      if let window = window, screen = window.screen {
        let offsetFromLeftOfScreen: CGFloat = 20;
        let offsetFromTopOfScreen: CGFloat = 20;
        let screenRect = screen.visibleFrame // 当前 window 的大小
        let newOriginY = CGRectGetMaxY(screenRect) - window.frame.height - offsetFromTopOfScreen
        window.setFrameOrigin(CGPoint(x: offsetFromLeftOfScreen, y: newOriginY))
      }
    }

}
