//
//  ViewController.swift
//  PanModalBottomLayoutOffset
//
//  Created by Suyeol Jeon on 2020/01/22.
//  Copyright © 2020 Suyeol Jeon. All rights reserved.
//

import UIKit

final class TabBarController: UITabBarController {
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    self.printDebugInfo()
    self.presentAnother()
  }

  private func presentAnother() {
    print("\n[\(Self.self)] Present AnotherViewController\n")
    let viewController = AnotherViewController()
    viewController.modalPresentationStyle = .fullScreen
    self.present(viewController, animated: true, completion: nil)
  }
}

final class AnotherViewController: UIViewController {
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    self.printDebugInfo()
  }
}

private extension UIViewController {
  func printDebugInfo() {
    guard let rootViewController = UIApplication.shared.keyWindow?.rootViewController else { return }
    print("[\(Self.self)] rootViewController.bottomLayoutGuide.length:", rootViewController.bottomLayoutGuide.length)
    print("[\(Self.self)] rootViewController.safeAreaInsets.bottom:", rootViewController.view.safeAreaInsets.bottom)
  }
}
