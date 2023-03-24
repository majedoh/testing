// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "testingMOH",
    platforms: [.iOS(.v13),],
    products: [
        .library(
            name: "testingMOH",
            targets: ["testingMOH"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kewlbear/FFmpeg-iOS.git", from: "0.0.5"),
        .package(url: "https://github.com/pvieito/PythonKit.git", from: "0.3.1"),
        .package(url: "https://github.com/kewlbear/Python-iOS.git", from: "0.1.1-b"),
    ],
    targets: [
        .target(
            name: "testingMOH",
            dependencies: ["Python-iOS", "PythonKit", "FFmpeg-iOS"]),
        .testTarget(
            name: "testingMOH_iOSTests",
            dependencies: ["testingMOH"]),
    ]
)
