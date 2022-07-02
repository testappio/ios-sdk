// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestAppIOSDK",
    platforms: [.iOS("11.0")],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "TestAppIOSDK", targets: ["TestAppIOSDK"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "TestAppIOSDK", path: "TestAppIOSDK.xcframework"),
    ]
)
