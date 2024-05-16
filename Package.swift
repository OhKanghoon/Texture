// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "Texture",
  platforms: [
    .macOS(.v10_13),
    .iOS(.v12),
    .tvOS(.v12),
  ],
  products: [
    .library(
      name: "AsyncDisplayKit",
      targets: ["AsyncDisplayKit"]
    ),
  ],
  dependencies: [],
  targets: [
    .target(
      name: "AsyncDisplayKit",
      dependencies: [],
      path: "spm/Sources/AsyncDisplayKit",
      publicHeadersPath: "include",
      cSettings: [
        .define("AS_USE_VIDEO", to: "1"),
        .define("AS_USE_MAPKIT", to: "1"),
        .define("AS_USE_PHOTOS", to: "1"),
        .define("AS_USE_PHOTOS", to: "1"),
        .define("AS_USE_ASSETS_LIBRARY", to: "1"),
      ],
      cxxSettings: [
        .define("AS_USE_VIDEO", to: "1"),
        .define("AS_USE_MAPKIT", to: "1"),
        .define("AS_USE_PHOTOS", to: "1"),
        .define("AS_USE_PHOTOS", to: "1"),
        .define("AS_USE_ASSETS_LIBRARY", to: "1"),
      ]
    ),
  ],
  cLanguageStandard: .c11,
  cxxLanguageStandard: .cxx11
)
