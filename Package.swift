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
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "GAppUtility",
            targets: ["GAppUtility"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/mohamedaglan2225/GAppSettings", .revision("014a472bfdfc4fd7497953575e8d036099ef5e5e"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "GAppUtility",
            dependencies: ["GAppSettings"]),
        .testTarget(
            name: "GAppUtilityTests",
            dependencies: ["GAppUtility"]),
    ]
)


