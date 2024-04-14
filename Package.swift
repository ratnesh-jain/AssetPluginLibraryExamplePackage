// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Application",
    platforms: [.iOS(.v17)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Application",
            targets: ["Application"]),
        .library(
            name: "Resources",
            targets: ["Resources"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/ratnesh-jain/AssetPluginLibrary", .upToNextMajor(from: "0.0.1")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "Resources", dependencies: []),
        .target(
            name: "Application", dependencies: ["Resources"]),
        .testTarget(
            name: "ApplicationTests",
            dependencies: ["Application"]),
    ]
)
