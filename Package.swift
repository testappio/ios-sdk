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
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "TestAppIOSDK", path: "../Products/xcframeworks/TestAppIOSDK.xcframework.zip"),
//        .binaryTarget(
//            name: "TestAppIOSDK",
//            url: "https://drive.google.com/file/d/172Cpg_GJzC_MdFVJ_84hKoiKEmZWaMjK/view?usp=sharing",
//            checksum: "f34d9d60f9ddb20e452300433307df7360b1c0d782a48160abf0341f72ac3956"
//        ),
    ]
)
