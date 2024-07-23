// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "flutter_mapbox_navigation",
    platforms: [
        // The platforms your plugin supports.
        // If your plugin only supports iOS, remove `.macOS(...)`.
        // If your plugin only supports macOS, remove `.iOS(...)`.
        .iOS("12.0"),
    ],
    products: [
        // If the plugin name contains "_", replace with "-" for the library name
        .library(name: "flutter-mapbox-navigation", targets: ["flutter_mapbox_navigation"])
    ],
    dependencies: [
        .package(url: "https://github.com/mapbox/mapbox-navigation-ios.git", .upToNextMajor(from: "2.11.0")),
    ],
    targets: [
        .target(
            name: "flutter_mapbox_navigation",
            dependencies: [
                .product(name: "MapboxCoreNavigation", package: "mapbox-navigation-ios"),
                .product(name: "MapboxNavigation", package: "mapbox-navigation-ios"),
            ],
            resources: [
                // If your plugin requires a privacy manifest, for example if it uses
                // any required reason APIs, update the PrivacyInfo.xcprivacy file to
                // describe your plugin's privacy impact, and then uncomment these lines.
                // For more information, see:
                // https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
                // .process("PrivacyInfo.xcprivacy"),

                // If you have other resources that need to be bundled with your plugin, refer to
                // the following instructions to add them:
                // https://developer.apple.com/documentation/xcode/bundling-resources-with-a-swift-package
            ]
        )
    ]
)
