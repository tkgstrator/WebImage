//
//  WebImage.swift
//  WebImage
//
//  Created by devonly on 2022/11/26.
//  Copyright © 2023 Magi, Corporation. All rights reserved.
//

import Foundation
import SDWebImageSwiftUI
import SwiftUI

public struct WebImage: View {
    private let url: URL?
    @Binding private var isAnimating: Bool

    public init(url: URL?, isAnimating: Binding<Bool>) {
        self.url = url
        self._isAnimating = isAnimating
    }

    public var body: AnimatedImage {
        AnimatedImage(
            url: url,
            options: [
                .continueInBackground, .lowPriority, .preloadAllFrames, .scaleDownLargeImages,
            ],
            context: nil,
            isAnimating: $isAnimating,
            placeholder: {
                ProgressView()
            }
        )
    }
}

extension WebImage {
    public func resizable() -> AnimatedImage {
        body.resizable()
    }

    public func scaledToFit() -> some View {
        body.scaledToFit()
    }

    public func scaledToFill() -> some View {
        body.scaledToFill()
    }

    public func indicator(_ indicator: (any SDWebImageIndicator)?) -> AnimatedImage {
        body.indicator(indicator)
    }

    public func transition(_ transition: SDWebImageTransition?) -> AnimatedImage {
        body.transition(transition)
    }
}
