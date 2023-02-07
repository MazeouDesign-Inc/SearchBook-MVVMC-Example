//
//  UITextField+extension.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import UIKit

extension UITextField {
    func textFieldAttrPlaceHolder(text: String) -> NSAttributedString {
        let attributedString = NSAttributedString(string: text,
                                                  attributes: [NSAttributedString.Key.foregroundColor:
                                                                UIColor.placeHolderColor])

        return attributedString
    }
}
