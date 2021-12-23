// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "xcwizard",
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.0.0")
    ],
    targets: [
        .executableTarget(
            name: "xcwizard",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]),
        .testTarget(
            name: "xcwizardTests",
            dependencies: ["xcwizard"]),
    ]
)
