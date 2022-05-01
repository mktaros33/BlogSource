// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "BlogSource",
    platforms: [.macOS(.v12)],
    products: [
        .executable(
            name: "BlogSource",
            targets: ["BlogSource"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.8.0")
    ],
    targets: [
        .executableTarget(
            name: "BlogSource",
            dependencies: [.product(name: "Publish", package: "publish")]
        )
    ]
)
