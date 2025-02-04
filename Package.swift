// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "Texture",
  platforms: [
    .iOS(.v14),
    .macOS(.v11),
    .tvOS(.v14),
  ],
  products: [
    .library(
      name: "AsyncDisplayKit",
      targets: ["AsyncDisplayKit"]
    ),
  ],
  targets: [
    .target(
      name: "AsyncDisplayKit",
      path: "spm/Sources/AsyncDisplayKit",
      publicHeadersPath: "include",
      cSettings: [
        .headerSearchPath("."),
        .define("AS_USE_VIDEO", to: "1"),
        .define("AS_USE_MAPKIT", to: "1"),
        .define("AS_USE_PHOTOS", to: "1"),
        .define("AS_USE_PHOTOS", to: "1"),
        .define("AS_PIN_REMOTE_IMAGE", to: "0"),
      ]
    ),
  ],
  cLanguageStandard: .c11,
  cxxLanguageStandard: .cxx11
)
