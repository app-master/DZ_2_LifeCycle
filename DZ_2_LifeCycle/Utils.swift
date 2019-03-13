//
//  Utils.swift
//  DZ_2_LifeCycle
//
//  Created by user on 13/03/2019.
//  Copyright © 2019 Sergey Koshlakov. All rights reserved.
//

import UIKit
import Foundation

let LogNotificationTextUserInfoKey = "LogNotificationTextUserInfoKey"

extension Notification.Name {
    static let logNotification = Notification.Name("logNotification")
    
}

func log(_ title: String? = nil, _ function: String = #function) {
    let df = DateFormatter()
    df.dateFormat = "HH:mm:ss:SSS"
    let text = "\(df.string(from: Date())) \(title ?? ""): \(function)"
    NotificationCenter.default.post(name: .logNotification, object: nil, userInfo: [LogNotificationTextUserInfoKey : text])
}
