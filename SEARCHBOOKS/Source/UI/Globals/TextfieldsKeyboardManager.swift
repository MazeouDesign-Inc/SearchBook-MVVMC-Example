//
//  TextfieldsKeyboardManager.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import Foundation
import IQKeyboardManager

private
protocol TextfieldsKeyboardManager {
    func reachLastTextField()
}

extension TextfieldsKeyboardManager where Self: UIViewController {
    func reachLastTextField() {
        IQKeyboardManager.shared().resignFirstResponder()
    }
}

extension UIViewController: TextfieldsKeyboardManager {
    @objc
    func changeFirstResponder(sender _: UITextField) {
        if IQKeyboardManager.shared().canGoNext {
            IQKeyboardManager.shared().goNext()
        } else {
            reachLastTextField()
        }
    }
    
    @objc
    func setupIQKeyboardToolbar(toolbarTitleLabel: String) {
        IQKeyboardManager.shared().shouldToolbarUsesTextFieldTintColor = true
        IQKeyboardManager.shared().isEnabled = true
        IQKeyboardManager.shared().toolbarDoneBarButtonItemText = toolbarTitleLabel
        IQKeyboardManager.shared().previousNextDisplayMode = .alwaysShow
    }
}
