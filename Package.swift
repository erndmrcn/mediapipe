// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MediaPipeTasksVision",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "MediaPipeTasksVision",
            targets: ["MediaPipeTasksVision"]
        )
    ],
    targets: [
        .target(
            name: "MediaPipeTasksVision",
            path: "mediapipe/tasks/ios/vision",
            exclude: ["Tests", "Examples", "Resources/testdata"],
            resources: [
                .process("Resources") // you can put tflite models here
            ],
            swiftSettings: [
                .define("MEDIAPIPE_IOS")
            ]
        )
    ]
)

