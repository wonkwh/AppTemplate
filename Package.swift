// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "AppTemplate",
  platforms: [
    .macOS(.v11),
    .iOS(.v14)
  ],
  products: [
    .library( name: "AppFeature", targets: ["AppFeature"]),
    .library(name: "Styleguide", targets: ["Styleguide"]),
    .library(name: "UIApplicationClient", targets: ["UIApplicationClient"]),
    .library(name: "UserDefaultsClient", targets: ["UserDefaultsClient"]),
  ],
  dependencies: [
    .package(
      name: "swift-composable-architecture",
      url: "https://github.com/pointfreeco/swift-composable-architecture.git",
      .exact("0.24.0")
    ),
    .package(
      name: "NukeUI",
      url: "https://github.com/kean/NukeUI",
      .exact("0.6.7")
    )
  ],
  targets: [
    .target(
      name: "AppFeature",
      dependencies: [
        "UserDefaultsClient",
        "UIApplicationClient",
        .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
        .product(name: "NukeUI", package: "NukeUI"),
      ]),
    .testTarget(
      name: "AppFeatureTests",
      dependencies: [
        "AppFeature",
        .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
      ]),
    .target(name: "Styleguide"),
    .target(name: "UIApplicationClient"),
    .target(name: "UserDefaultsClient"),
  ]
)
