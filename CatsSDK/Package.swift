// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "CatsSDK",
    platforms: [
    	.iOS(.v12)
    ],
    products: [
        .library(name: "CatsSDK", targets: ["CatsSDK"])
    ],
    targets: [
    	.binaryTarget(name: "CatsSDK", path: "outputs/CatsSDK.xcframework")
    ]
)
