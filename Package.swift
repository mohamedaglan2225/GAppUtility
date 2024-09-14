// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "GAppUtility",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "GAppUtility",
            targets: ["GAppUtility"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mohamedaglan2225/GAppSettings.git", from: "1.0.1")
    ],
    targets: [
        .target(
            name: "GAppUtility",
            dependencies: ["GAppSettings"]
        ),
        .testTarget(
            name: "GAppUtilityTests",
            dependencies: ["GAppUtility"]),
    ]
)
