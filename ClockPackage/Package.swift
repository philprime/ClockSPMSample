// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ClockPackage",
    products: [
        .library(name: "ClockUI", targets: ["ClockUI"]),
    ],
    targets: [
        .target(name: "ClockUI")
    ]
)
