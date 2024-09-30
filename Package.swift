// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "RudderCleverTap",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "RudderCleverTap",
            targets: ["RudderCleverTap"]
        )
    ],
    dependencies: [
        // Rudder SDK
        .package(url: "https://github.com/rudderlabs/rudder-sdk-ios.git", from: "1.12.0"),
    ],
    targets: [
        .target(
            name: "RudderCleverTap",
            dependencies: [
                .product(name: "Rudder", package: "rudder-sdk-ios"),
            ],
            path: "Rudder-CleverTap/Classes",
            exclude: ["Example"],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("Rudder-CleverTap/Classes")
            ]
        )
    ]
)
