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
    targets: [
        .target(
            name: "GAppUtility"
        ),
        .testTarget(
            name: "GAppUtilityTests",
            dependencies: ["GAppUtility"]),
    ]
)
