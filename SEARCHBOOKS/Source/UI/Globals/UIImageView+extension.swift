//
//  UIImageView+extension.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import Foundation
import SDWebImage

extension UIImageView {
    func getImageFromUrl(imageURL: URL) {
        sd_setImage(
            with: imageURL,
            placeholderImage: Asset.Images.emptyBookPocket.image,
            options: SDWebImageOptions(rawValue: 0),
            completed: { _, error, _, url in
//                if let error = error as NSError?, let url = url {
//                    let errorCode = String(describing: error.userInfo["SDWebImageErrorDownloadStatusCodeKey"])
//                    let message = String(format: "failed to load profile image (%@)", errorCode)
//                    AnalyticsManager.shared.logError(
//                        message: message,
//                        error: error,
//                        extra: ["url": url, "fingerPrint": errorCode]
//                    )
//                }
            }
        )
    }
}
