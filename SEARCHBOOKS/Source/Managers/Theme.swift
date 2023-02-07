//
//  Theme.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import UIKit

// inspired from https://www.raywenderlich.com/652-uiappearance-tutorial-getting-started
class Theme: NSObject {
    @objc
    class func apply() {
        // By default, the app is loaded with a "default theme color".
        // From this class, we customize the UI elements to avoid customize them
        // for each view.
        // MARK: - Textfield
        UITextField.appearance().font = FontFamily.Sprout.medium.font(size: 17)
        UITextField.appearance().textColor = .textColor
        
        // MARK: - TextView
        UITextView.appearance().font = FontFamily.Sprout.medium.font(size: 17)
        UITextView.appearance().textColor = .textColor
        //
        // MARK: Tableview
        UITableView.appearance().backgroundColor = .alternateViewBackgroundColor
    }
}
