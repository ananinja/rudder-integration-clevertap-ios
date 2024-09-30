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
    dependencies: [],
    targets: [
        .target(
            name: "RudderCleverTap",
            dependencies: [],
            path: "Rudder-CleverTap/Classes",
            exclude: ["Example"],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("Rudder-CleverTap/Classes")
            ]
        )
    ]
)
