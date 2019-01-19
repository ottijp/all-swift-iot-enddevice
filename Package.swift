// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "SwiftyPi",
  dependencies: [
    .package(url: "https://github.com/uraimo/SwiftyGPIO.git", from: "1.0.0"),
    .package(url: "https://github.com/shiroyagicorp/swift-seeurl.git", from: "1.9.0")
  ],
  targets: [
    .target(
      name: "SwiftyPi",
      dependencies: ["SwiftyGPIO", "SeeURL"]),
  ]
)
