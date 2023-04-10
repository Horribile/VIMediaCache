// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

 //
 //Migrated from pod:
 //Pod::Spec.new do |s|
 //    s.name = 'VIMediaCache'
 //    s.version = '0.4'
 //    s.license = 'MIT'
 //    s.summary = 'VIMediaCache is a tool to cache media file while play media using AVPlayer'
 //    s.homepage = 'https://github.com/vitoziv/VIMediaCache'
 //    s.author = { 'Vito' => 'vvitozhang@gmail.com' }
 //    s.source = { :git => 'https://github.com/vitoziv/VIMediaCache.git', :tag => s.version.to_s }
 //    s.platform = :ios, '9.0'
 //    s.source_files = 'VIMediaCache/*.{h,m}', 'VIMediaCache/**/*.{h,m}'
 //    s.frameworks = 'MobileCoreServices', 'AVFoundation'
 //    s.requires_arc = true
 // end

let package = Package(
    name: "VIMediaCache",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "VIMediaCache",
            targets: ["VIMediaCache"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "VIMediaCache",
            dependencies: [],
            linkerSettings: [
                .linkedFramework("MobileCoreServices"),
                .linkedFramework("AVFoundation"),
            ]
            ),
        .testTarget(
            name: "VIMediaCacheTests",
            dependencies: ["VIMediaCache"]),
    ]
)
