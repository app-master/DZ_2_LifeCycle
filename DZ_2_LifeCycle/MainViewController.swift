//
//  ViewController.swift
//  DZ_2_LifeCycle
//
//  Created by user on 13/03/2019.
//  Copyright © 2019 Sergey Koshlakov. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var logsView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(test(_:)),
                                               name: Notification.Name.logNotification,
                                               object: nil)
        
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc func test(_ notification: Notification) {
        guard let data = notification.userInfo as? [String: String] else { return }
        for (_, value) in data {
            logsView.text = "\(logsView.text ?? "")\n\(value)"
        }
    }
    
}

