//
//  PaddedBookView.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 08/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import UIKit

open class PaddedBookView: UIView {
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
        layer.masksToBounds = true
        layer.borderWidth = 1
        layer.borderColor = UIColor.primaryColor.cgColor
        layer.cornerRadius = 10
    }
}
