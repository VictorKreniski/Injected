// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Injected",
    platforms: [.iOS(.v16), .macOS(.v13), .tvOS(.v16), .watchOS(.v9)],
    products: [
        .library(
            name: "Injected",
            targets: ["Injected"])
    ],
    targets: [
        .target(
            name: "Injected",
            dependencies: []),
        .testTarget(
            name: "InjectedTests",
            dependencies: ["Injected"])
    ]
)
