//
//  SVGImageManager.swift
//  SplatNet3
//
//  Created by devonly on 2024/04/12.
//  Copyright © 2023 Magi, Corporation. All rights reserved.
//

import Foundation
import SDWebImageSVGCoder
import SDWebImageSVGNativeCoder

public enum SVGImage {
    public enum SVGCoder: CaseIterable {
        case SVGCoder
        case SVGNativeCoder
    }

    public static func configure(coder: SVGCoder = .SVGCoder) {
        switch coder {
        case .SVGNativeCoder:
            SDImageCodersManager.shared.addCoder(SDImageSVGNativeCoder.shared)
        case .SVGCoder:
            SDImageCodersManager.shared.addCoder(SDImageSVGCoder.shared)
        }
    }
}
