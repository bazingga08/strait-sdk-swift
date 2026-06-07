// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "BridgeSDK",
    platforms: [.iOS(.v13), .macOS(.v11)],
    products: [
        .library(name: "BridgeSDK", targets: ["BridgeSDK"]),
    ],
    targets: [
        .target(name: "BridgeSDK"),
        .testTarget(
            name: "BridgeSDKTests",
            dependencies: ["BridgeSDK"],
            resources: [.copy("test-vectors.json")]
        ),
    ]
)
