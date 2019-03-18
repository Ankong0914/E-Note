//
//  ViewController.swift
//  E-Note
//
//  Created by kobayashi on 2019/03/18.
//  Copyright © 2019 kobayashi. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSTextViewDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.wantsLayer = true
        let image = NSImage(named: "bk2")
        self.view.layer!.contents = image
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    override func mouseDown(with event: NSEvent) {
        let clickPos = CGPoint(x: event.locationInWindow.x, y: event.locationInWindow.y)
        createTextBox(x:clickPos.x, y:clickPos.y)
    }
    
    func createTextBox(x: CGFloat, y: CGFloat){
        let textView=NSTextView.init(frame: NSRect.init(x: 100, y:100, width: 15, height: 15))
        
        textView.backgroundColor = NSColor.systemPink
        textView.textColor = NSColor.black
        textView.insertionPointColor = NSColor.black
        textView.isHorizontallyResizable = true
        textView.frame = CGRect(x:x-4,y:y-9,width:100,height:15)

        textView.delegate = self
        
        self.view.addSubview(textView)
    }

}

