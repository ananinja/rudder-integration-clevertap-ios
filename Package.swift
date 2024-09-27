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
        .package(url: "https://github.com/rudderlabs/rudder-sdk-ios.git", from: "1.29.0"),
        // CleverTap SDK
        .package(url: "https://github.com/CleverTap/clevertap-ios-sdk.git", from: "7.0.1"),
    ],
    targets: [
        .target(
            name: "RudderCleverTap",
            dependencies: [
                .product(name: "Rudder", package: "rudder-sdk-ios"),
                .product(name: "CleverTapSDK", package: "clevertap-ios-sdk")
            ],
            path: "Rudder-CleverTap",
            sources: ["Classes/"],
            exclude: ["Example"],
            publicHeadersPath: "Classes/",
            cSettings: [
                .headerSearchPath("Classes/")
            ]
        )
    ]
)
