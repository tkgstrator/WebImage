// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WebImage",
    platforms: [.iOS(.v14), .macOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "WebImage",
            targets: ["WebImage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SDWebImage/SDWebImageSwiftUI.git", from: "3.0.2"),
        .package(url: "https://github.com/SDWebImage/SDWebImageSVGCoder.git", from: "1.7.0"),
        .package(url: "https://github.com/SDWebImage/SDWebImageSVGNativeCoder.git", from: "0.2.0"),
        .package(url: "https://github.com/realm/SwiftLint.git", from: "0.54.0"),
        .package(url: "https://github.com/apple/swift-format.git", from: "509.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "WebImage",
            dependencies: [
                "SDWebImageSwiftUI",
                "SDWebImageSVGCoder",
                "SDWebImageSVGNativeCoder"
            ],
            plugins: [
                .plugin(name: "SwiftLintPlugin", package: "SwiftLint"),
            ]
        ),
        .testTarget(
            name: "WebImageTests",
            dependencies: ["WebImage"]),
    ]
)
