// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Japx",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Japx",
            targets: ["Japx"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", from: "4.9.0"),
        .package(url: "https://github.com/ReactiveX/RxSwift", from: "5.0.0"),
        .package(url: "https://github.com/Moya/Moya.git", from: "13.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Japx",
            dependencies: []),
        .testTarget(
            name: "JapxTests",
            dependencies: ["Japx"]),
    ]
)
