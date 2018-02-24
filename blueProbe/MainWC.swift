//
//  MainWC.swift
//  blueProbe
//
//  Created by lining on 2018/1/26.
//  Copyright © 2018年 biubiublue. All rights reserved.
//

import Cocoa

class MainWC: NSWindowController {

    @IBOutlet weak var pathstr: NSTextField!

    let openPP = NSOpenPanel()
    override func windowDidLoad() {
        super.windowDidLoad()
        self.window?.backgroundColor = NSColor.white
        self.window?.title = "蓝色探针"
   
        
    }
    
    @IBAction func getPathBtn(_ sender: Any) {
        
        
        openPP.allowsMultipleSelection = false
        openPP.canChooseDirectories    = true
        openPP.canChooseFiles          = false
        
        openPP.begin(completionHandler: { (result) in
            
            if result.rawValue == NSFileHandlingPanelOKButton {

                print("NSFileHandlingPanelOKButton")
                print(self.openPP.url?.path as Any)
                self.pathstr.stringValue = (self.openPP.url?.path)!
                
            }
            
            if result.rawValue == NSFileHandlingPanelCancelButton {
                
                print("NSFileHandlingPanelCancelButton")
                
                
            }

            
        })

        
    }
}
