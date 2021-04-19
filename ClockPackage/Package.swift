// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ClockPackage",
    products: [
        .library(name: "ClockUI", targets: ["ClockUI"]),
        .library(name: "ClockUI_iOS", targets: ["ClockUI_iOS"]),
        .library(name: "ClockUI_macOS", targets: ["ClockUI_macOS"]),
    ],
    targets: [
        .target(name: "ClockUI"),
        .target(name: "ClockUI_iOS", resources: [
            .process("Resources/ClockViewController_iOS.xib"),
        ]),
        .target(name: "ClockUI_macOS", resources: [
            .process("Resources/ClockViewController_macOS.xib"),
        ])
    ]
)
