//
//  SecondViewController.swift
//  playPianoPlay
//
//  Created by Denis Andreev on 26.02.2019.
//  Copyright © 2019 Артем. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: ViewController {
    
    var textView = UITextView()
    
    override func viewDidLoad() {
        textView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        textView.backgroundColor = UIColor.red
        view.addSubview(textView)
        
    }
}
