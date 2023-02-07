//
//  PaddedTextField.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import UIKit

// Inspired from https://gist.github.com/ksmandersen/e2d4d6bd60a685e94eb7e22b7670d2a8
open class PaddedTextField: UITextField {
    @objc
    public var textInsets = UIEdgeInsets.zero {
        didSet {
            setNeedsDisplay()
        }
    }

    override public init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    convenience init() {
        self.init(frame: .zero)
        setup()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    private func setup() {
        layer.borderWidth = 1
        layer.cornerRadius = 6
        layer.borderColor = UIColor.separator.cgColor
        inputAccessoryView = nil
        inputView = nil
        textContentType = .oneTimeCode
        textColor = .action
    }

    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: textInsets)
    }

    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: textInsets)
    }

    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: textInsets)
    }

    override open func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: textInsets))
    }

    @discardableResult
    override open func becomeFirstResponder() -> Bool {
        layer.borderColor = UIColor.red.cgColor
        layer.borderColor = UIColor.action.cgColor
        return super.becomeFirstResponder()
    }

    @discardableResult
    override open func resignFirstResponder() -> Bool {
        layer.borderColor = UIColor.separator.cgColor
        return super.resignFirstResponder()
    }
}
