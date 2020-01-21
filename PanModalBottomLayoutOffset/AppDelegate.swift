//
//  AppDelegate.swift
//  PanModalBottomLayoutOffset
//
//  Created by Suyeol Jeon on 2020/01/22.
//  Copyright © 2020 Suyeol Jeon. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let window = UIWindow(frame: UIScreen.main.bounds)
    window.rootViewController = TabBarController()
    window.makeKeyAndVisible()
    self.window = window
    return true
  }
}

