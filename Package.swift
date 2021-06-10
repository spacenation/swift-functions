// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Functions",
    products: [
        .library(
            name: "Functions",
            targets: ["Functions"]),
    ],
    targets: [
        .target(
            name: "Functions",
            dependencies: []),
        .testTarget(
            name: "FunctionsTests",
            dependencies: ["Functions"]),
    ]
)
